class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def my_teams
    @memberships = Membership.all.where(user_id: current_user)
    @teams = @current_user.player_teams
  end

  def index
    @teams = Team.all

    @markers = @teams.geocoded.map do |team|
      {
        lat: team.latitude,
        lng: team.longitude,
        info_window: render_to_string(partial: "info_window", locals: { team: team }),
        image_url: helpers.asset_url(team.team_logo)
      }
    end
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @user_capitan = current_user
    @team.user = @user_capitan

    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @team.update(team_params)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:team_name, :country, :city, :description, :zip_code, :size)
  end
end

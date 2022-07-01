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
        lng: team.longitude
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
    @team.country = @user_capitan.country
    unless @team.banner.attached?
      @team.team_banner = "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1654773383/Direct-league/BG_fmnpwt.png"
    end
    unless @team.logo.attached?
      @team.team_logo = "https://res.cloudinary.com/tony-thunder-cloud/image/upload/v1656626382/Direct-league/Pngtree_soccer_club_logo_vector_template_4102622_jzarj9.png"
    end
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
    params.require(:team).permit(:team_name, :country, :city, :description, :zip_code, :size, :logo, :banner)
  end
end

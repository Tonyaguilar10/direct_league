class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def my_teams
    @membership = Membership.all
    @teams = Team.all.where(@membership.user == current_user)
    raise
    # @teams = Team.all.where(current_user: @membership)
  end

  def index
    @teams = Team.all
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

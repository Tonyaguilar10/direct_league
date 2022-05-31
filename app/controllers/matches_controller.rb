class MatchesController < ApplicationController
  require 'date'
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  def all
    @matches = Match.all.where(user: current_user)
  end

  def index
    today = Date.today
    @matches = Match.all.where.not(user: current_user).and(Match.all.where(:date >= today ))
  end

  def show
  end

  def new
    @team = Team.find(params[:team_id])
    @match = Match.new
    @match.home_team = @team
    @field = ? #idk if this is necessary
  end

  def create
    @match = Match.new(match_params)
    @team = Team.find(params[:team_id])
    @match.home_team = @team
    @field = ? #idk if this is necessary
    if @match.save
      redirect_to match_path(@team)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:match).permit(:date, :duration, :description, :match_size, :home_goals, :away_goals)
  end
end

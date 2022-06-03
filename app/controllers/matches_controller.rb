class MatchesController < ApplicationController
  require 'date'
  before_action :set_match, only: [:show, :edit, :update, :destroy, :accept_challenge]

  def my_matches
    @matches_created = []
    current_user.teams.each do |team|
      matches_created = Match.joins(:home_team).where(home_team: team)
      # matches_created = Match.all.where(:home_team == team || :away_team == team)
      unless matches_created.empty?
        matches_created.each do |match|
          @matches_created << match
        end
      end
    end
    @matches_created.uniq!

    @matches_accepted = []
    current_user.teams.each do |team|
      matches_accepted = Match.joins(:away_team).where(away_team: team)
      unless matches_accepted.empty?
        matches_accepted.each do |match|
          @matches_accepted << match
        end
      end
    end
    @matches_accepted.uniq!
  end

  def index
    # Matches that are not my team that are in the future
    @team = Team.find_by(user: current_user).id
    @matches = Match.all.where(:away_team == nil)
    # @matches = []
    # current_user.teams.each do |team|
    #   @matches << Match.joins(:home_team).where.not(home_team: team).select { |match| match.match_date >= DateTime.now }
    # end
    # @matches.uniq!
    # raise
    # @matches = Match.all.where.not(home_team: current_user.team).and(Match.all.select { |match| match.date >= Date.today })
  end

  def show
  end

  def new
    @team = Team.find_by(user: current_user)
    @match = Match.new
    @match.home_team = @team
    @fields = Field.all
  end

  def create
    @match = Match.new(match_params)
    @team = Team.find_by(user: current_user)
    @match.home_team = @team

    if @match.save
      redirect_to matches_path
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

  def accept_challenge
    @team = Team.find_by(user: current_user).id
    @match.away_team_id = @team
    @match.save
    redirect_to matches_path
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:match).permit(:duration, :description, :match_size, :home_goals, :away_goals, :field_id, :match_date)
  end
end

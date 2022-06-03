class RequestsController < ApplicationController

  before_action :set_request, only: [:show, :edit, :update, :destroy, :accept_request, :accept_request]

  def my_requests
    @team = Team.find_by(user: current_user)
    @requests_sent = Request.all.where(challenger_team: @team)
    @requests_recived = Request.all.where(opponent_team: @team)
  end

  def new
  end

  def accept_request
    @match = Match.create(home_team_id: @request.challenger_team_id, away_team_id: @request.opponent_team_id, match_date: @request.proposed_match_date, minutes_duration: @request.proposed_duration, field_id: @request.field_id)
    @request.destroy
    redirect_to my_requests_path
  end

  def edit
  end

  def update
    @request.update(match_params)
    if @request.save
      redirect_to my_requests_path
    else
      render :new
    end
  end

  def destroy
    @request.destroy
    redirect_to my_requests_path
  end

  private

  def set_request
    @request = Request.find(params[:id])
    @team = Team.find(params[:team_id])
  end

  def match_params
    params.require(:request).permit(:proposed_match_date, :content, :proposed_duration, :field_id)
  end
end

class RequestsController < ApplicationController

  before_action :set_request, only: [:show, :edit, :update, :destroy, :accept_request]

  def my_requests
    @team = Team.find_by(user: current_user)
    @requests_sent = Request.all.where(challenger_team: @team)
    @requests_recived = Request.all.where(opponent_team: @team)
  end

  def new
  end

  def create
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
  end

  private

  def set_request
    @request = Request.find(params[:id])
    @team = Team.find(params[:team_id])
  end

  def match_params
    params.require(:request).permit(:proposed_match_date, :content)
  end
end

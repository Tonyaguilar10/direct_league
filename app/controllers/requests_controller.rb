class RequestsController < ApplicationController

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
  end

  def destroy
  end
end

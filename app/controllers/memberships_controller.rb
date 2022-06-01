class MembershipsController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @player = current_user #User.find(params[:user_id])
    @membership = Membership.new
    @membership.team = @team
    @membership.user = @player
  end

  def create
    @team = Team.find(params[:team_id])
    @player = User.find(params[:user_id])
    @membership = Membership.new
    @membership.team = @team
    @membership.user = @player
    @membership.save
  end

  def destroy
    #status her or in in the view?
    @membership = Membership.find[] #is this needed?
  end
end

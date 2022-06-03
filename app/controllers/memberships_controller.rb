class MembershipsController < ApplicationController

  def my_memberships
    @memberships_sent = Membership.all.where(user: current_user)
    @team = Team.find_by(user: current_user)
      if !@team.nil?
        @memberships_recived = Membership.all.where(team: @team)
      end
  end

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
    @membership.status = false
    @membership.team = @team
    @membership.user = @player
    @membership.save
  end

  def destroy
    #status her or in in the view?
    @membership = Membership.find[] #is this needed?
  end
end

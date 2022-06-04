class MembershipsController < ApplicationController

  before_action :set_membership, only: [:destroy, :update]

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
    @membership.status = false
    @membership.team = @team
    @membership.user = @player
    @membership.save
    redirect_to my_memberships_path
  end

  def create
    @team = Team.find(params[:team_id])
    @player = current_user#User.find(params[:user_id])
    @membership = Membership.new
    @membership.status = false
    @membership.team = @team
    @membership.user = @player
    @membership.save
    redirect_to my_memberships_path
  end

  def update
    @membership.status = true
    @membership.save
    redirect_to my_memberships_path
  end

  def destroy
    @membership.destroy
    redirect_to my_memberships_path
  end

  private

  def set_membership
    @membership = Membership.find(params[:id])
    @team = Team.find(params[:team_id])
  end

end

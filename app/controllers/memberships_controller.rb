class MembershipsController < ApplicationController

  before_action :set_membership, only: [:destroy, :update]

  def my_memberships
    @team = Team.find_by(user: current_user)
    # as user
    # sent = all where I am user and is not my team and I want yo join (Done)
    @memberships_sent = Membership.all.where(user: current_user)
    # recived = all where I am user and is not my team and they want me to join
    @contracts_recived = Contract.all.where.not(team: @team).and(Contract.all.where(user: current_user))

    # as captain
    # sent = all where I am not captain and is my team and I want that person to join my team
    @contracts_sent = Contract.all.where.not(user: current_user).and(Contract.all.where(team: @team))
    # recived = all where I am not captain and is my team and that person wnats to join my team (done)
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
    redirect_to my_teams_path
  end

  private

  def set_membership
    @membership = Membership.find(params[:id])
    @team = Team.find(params[:team_id])
  end

end

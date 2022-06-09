class ContractsController < ApplicationController

  before_action :set_contract, only: [:destroy, :update]

  def new
    @team = Team.find_by(user: current_user)
    @player = User.find_by(id: params[:id])
    @contract = Contract.new
    @contract.team = @team
    @contract.user = @player
    @contract.save
    redirect_to my_memberships_path
  end

  def create
    @team = Team.find_by(user: current_user)
    @player = User.find_by(id: params[:id])
    @contract = Contract.new
    @contract.team = @team
    @contract.user = @player
    @contract.save
    redirect_to my_memberships_path
  end

  def update
    @contract.status = true
    @contract.save
    @membership = Membership.create(user_id: @contract.user_id, team_id: @contract.team_id, status: true)
    redirect_to my_memberships_path
  end

  def destroy
    @contract.destroy
    redirect_to my_memberships_path
  end

  def my_contracts
    @contracts_sent = Contract.all.where(user: current_user).and(Contract.all.where.not(user: current_user))
    @team = Team.find_by(user: current_user)
    @contracts_recived = Contract.all.where.not(team: @team).and(Contract.all.where.not(user: current_user))
  end

  private

  def set_contract
    @contract = Contract.find(params[:format])
  end
end

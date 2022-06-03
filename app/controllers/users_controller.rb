class UsersController < ApplicationController
  def index
    @players = User.all
  end

  def show
    @player = User.find(params[:id])
  end
end

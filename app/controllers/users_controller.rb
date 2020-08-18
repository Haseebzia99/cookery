class UsersController < ApplicationController

  def index
    @chefs = User.chefs
  end

  def show
    @chef = User.find(params[:id])
  end

end

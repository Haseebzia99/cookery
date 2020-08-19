class UsersController < ApplicationController

  def home
    @chefs = User.chefs
  end

  def show
    @chef = User.find(params[:id])
  end

  def edit
    @chef = current_user
  end

  def update
    @chef = current_user
    @chef.update(strong_params)
    redirect_to user_path(@chef)
  end

  private

  def strong_params
    require(:user).permit(:cuisine, :description, :postcode)
  end

end

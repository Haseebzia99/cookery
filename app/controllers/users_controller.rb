class UsersController < ApplicationController

  def home
    @chefs = User.chefs
  end

  def show
    @chef = User.find(params[:id])
  end

  def profile
    @chef = current_user
  end

  def edit
    @chef = current_user
  end

  def update
    @chef = current_user
    if @chef.update(chef_params)
      redirect_to profile_path(@chef)
    else 
      render :edit
    end
  end


  def chef_params
  params.require(:user).permit(:cuisine, :photo, :chef_photo, :biography)
  end
end

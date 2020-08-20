class UsersController < ApplicationController

  def home
    @chefs = User.chefs
  end

  def show
    @chef = User.find(params[:id])
    @booking = Booking.new
  end

  def profile
    @chef = current_user
  end

  def edit
    @chef = current_user
  end

  def update
    @chef = current_user
    @chef.cuisine = params[:user][:cuisine]
    @chef.save
    redirect_to profile_path(@chef)
  end

end

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
    @bookings = Booking.where(chef_id: current_user[:id])
    @bookings_user = Booking.where(user_id: current_user[:id])
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

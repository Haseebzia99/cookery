class UsersController < ApplicationController

  def home
    if params[:query].present?
     @chefs = User.search_by_cuisine(params[:query])
    else
      @chefs = User.chefs
    end
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

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
    @chef = current_user #This could be blank
  end

  def update
    if current_user.chef
      @chef = current_user
      if @chef.update(chef_params)
        redirect_to profile_path(@chef)
      else 
        render :edit
      end
    else
      if current_user.update(user_params)
        redirect_to profile_path(current_user)
      else 
        render :edit
      end
    end 
  end

  private 

  def chef_params
  params.require(:user).permit(:cuisine, :photo, :chef_photo, :biography)
  end

  def user_params
  params.require(:user).permit(:photo, :first_name, :last_name, :biography, :postcode)
  end
end

class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    @booking.chef = User.find(params[:user_id])
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end



  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    flash[:notice] = "Your booking has been deleted"
    redirect_to profile_path(current_user)
  end

  private

  def strong_params
  params.require(:booking).permit(:user_id, :description, :postcode, :date, :chef_id)
  end
end

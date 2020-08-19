class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def strong_params
    require(:booking).permit(:chef_id, :description, :date)
  end
end

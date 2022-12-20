class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking.save
  end

  def destroy
  end

  def index
  end
end

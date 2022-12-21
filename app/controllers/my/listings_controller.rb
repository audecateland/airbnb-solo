class My::ListingsController < ApplicationController

  def index
    @my_listings = current_user.listings
  end

  # Def client_bookings
  # @client_bookings = Booking.where.not(user: current_user).where(listing: current_user.listings)
end

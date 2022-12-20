class ListingsController < ApplicationController
  before_action :set_listing, only: %i[destroy show edit update]

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  def edit
  end

  def update
    @listing.update(listing_params)
    redirect_to listing_path(@listing)
  end

  def show
    @booking = Booking.new
  end

  def index
    @listings = Listing.all
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :address, :note)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end

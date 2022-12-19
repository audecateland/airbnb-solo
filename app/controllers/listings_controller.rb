class ListingsController < ApplicationController
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
  end

  def show
  end

  def index
    @listing = Listing.all
  end

  private

  def listing_params
    params.require(:listing).permit(:name, :address, :note)
  end
end

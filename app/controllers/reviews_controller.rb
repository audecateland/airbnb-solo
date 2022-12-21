class ReviewsController < ApplicationController
  before_action :set_listing, only: %i[new create]

  def new
    @listing = Listing.find(params[:listing_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.listing = @listing
    if @review.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def index
  end

  private

  def review_params
    params.require(:review).permit(:comment, :note)
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end
end

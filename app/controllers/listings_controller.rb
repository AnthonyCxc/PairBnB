class ListingsController < ApplicationController
  before_action :require_login

  def index
    # current_user.listings
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listings_path
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:country, :state_or_province,
      :address, :number_of_guests, :price_per_night)
    end
end

class ListingsController < ApplicationController
  before_action :require_login

  def index
    # current_user.listings
    @page = params[:page].to_i
    @prev_page = @page - 1 unless @page == 0
    @next_page = @page + 1 unless (@page * 10 > Listing.count)
    @listings = Listing.limit(10).offset(@page * 10).order(created_at: :DESC)
    #limit the listings per page
    # @listings = Listing.order(:name).page params[:page]
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params)
    if @listing.save
      redirect_to listings_path
    end
  end


  private
    def listing_params
      params.require(:listing).permit(:title,:description,:country, :state_or_province,
      :address, :number_of_guests, :price_per_night)
    end
end

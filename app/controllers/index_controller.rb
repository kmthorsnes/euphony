class IndexController < ApplicationController
  def index
  end

  def search
    @results = Listing.search params[:search]
  end

end

class IndexController < ApplicationController
  def index
  end

  def search
    binding.pry
    RSpotify.authenticate(ENV['SpotifyClientID'],ENV['SpotifyClientSecret'])
    @results = RSpotify::Track.search(params[:query])
    render :index
  end
end

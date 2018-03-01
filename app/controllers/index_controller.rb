class IndexController < ApplicationController
  def index
  end

  def search
    RSpotify.authenticate(ENV['SpotifyClientID'],ENV['SpotifyClientSecret'])
    @results =  RSpotify::Track.search(params[:query], limit: 5)
    render :index
  end
end

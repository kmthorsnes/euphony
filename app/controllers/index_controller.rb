class IndexController < ApplicationController
  def index
  end

  def search
    binding.pry
    RSpotify.authenticate(ENV['SpotifyClientID'],ENV['SpotifyClientSecret'])
    results = RSpotify::Track.search(params[:query])
    id = results.first.id
    @recommendations = RSpotify::Recommendations.generate(seed_tracks: [id])  


    render :index
  end
end

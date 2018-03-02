class IndexController < ApplicationController
  def index
  end

  def search
    RSpotify.authenticate(ENV['SpotifyClientID'],ENV['SpotifyClientSecret'])
    results = RSpotify::Track.search(params[:query])
    id = results.first.id
    @recommendations = RSpotify::Recommendations.generate(seed_tracks: [id])
    binding.pry


    render :index
  end
end

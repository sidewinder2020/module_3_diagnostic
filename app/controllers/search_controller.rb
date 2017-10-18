class SearchController < ApplicationController
  def index
    @stations = StationSearch.new(params['q'].to_i).stations
  end
end

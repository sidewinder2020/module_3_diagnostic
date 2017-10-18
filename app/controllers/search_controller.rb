class SearchController < ApplicationController
  def index
    @stations = StationSearch.new(params['q']).stations
  end
end

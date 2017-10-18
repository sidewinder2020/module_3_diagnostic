class SearchController < ApplicationController
  def index
    binding.pry
    @stations = StationSearch.new(params['q']).stations
  end
end

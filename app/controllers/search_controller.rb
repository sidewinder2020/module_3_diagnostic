class SearchController < ApplicationController
  def index
    @stations = AltFuelStationService.new(zipcode).*method TBD*
  end
end

class Zipcode

  attr_reader :station, :stations

  def initialize(stations, station)
    @zipcode = zipcode
    @stations = stations
  end

  def self.find(zipcode)
    binding.pry
    stations = AltFuelStationService.new.find_by_zipcode(zipcode)
    Zipcode.new(stations, zipcode)
  end
end

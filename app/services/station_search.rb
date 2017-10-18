class StationSearch
  def initialize(zipcode)
    @zipcode = zipcode
  end

  def stations
    raw_stations.map do |raw_station|
      Station.new(raw_station)
    end
  end

  private

    def raw_stations
      binding.pry
      raw_stations = AltFuelStationService.new.find_by_zipcode(zipcode)["fuel_stations"]
    end

    attr_reader :zipcode
end

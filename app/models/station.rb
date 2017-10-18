class Station

  def self.find('zipcode')
    stations = AltFuelStationService.new.find_by_zipcode(zipcode)
  end
end

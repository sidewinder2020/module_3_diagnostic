class Station

  attr_reader :name, :address, :fuel_type, :distance, :access_times

  def initialize(attrs = {})
    @name = attrs["station_name"]
    @address = attrs["street_address"]
    @fuel_type = attrs["fuel_type_code"]
    @distance = attrs["distance"]
    @access_times = attrs["access_days_time"]
  end
end

class AltFuelStationService

  def initialize
    @conn = Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1/') do |faraday|
      faraday.headers["X-API-KEY"] = "cFSRX90qhxdoTDp0pmUuuM2aWewha8RLmoHusJfG"
      faraday.adapter Faraday.default_adapter
    end
  end

  def find_by_zipcode(zipcode)
    response = @conn.get("nearest.json?location=#{zipcode}&radius=6&fuel_type=ELEC,LPG")
    JSON.parse(response.body, symbolize_names: true)
  end
  #put all of the params in the endpoint, IF POSSIBLE - note: check available endpoints
  private

end

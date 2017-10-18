class AltFuelStationService

  def initialize
    @conn = Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1') do |faraday|
      faraday.headers["X-API-KEY"] = "cFSRX90qhxdoTDp0pmUuuM2aWewha8RLmoHusJfG"
      faraday.adapter Faraday.default_adapter
    end
  end

  def response(zipcode)
    response = @conn.get("/nearest/#{zipcode}.json")
    JSON.parse(response.body)
  end

end

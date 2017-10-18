class SearchController < ApplicationController
  def index
    @stations = Zipcode.find(params['q'])
  end
end

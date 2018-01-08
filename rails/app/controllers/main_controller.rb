class MainController < ApplicationController

  def index
    uri = URI.parse('http://api:5000')
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    @message = result['message']
  end

end

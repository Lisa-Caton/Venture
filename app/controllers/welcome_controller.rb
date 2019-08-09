require 'net/http'
require 'json'

class WelcomeController < ApplicationController
  def index
    url = "https://api.exchangerate-api.com/v4/latest/USD" # Setting URL
    uri = URI(url) # Uniform Resource Identifier
    response = Net::HTTP.get(uri)
    response_obj = JSON.parse(response)

    # Getting a rate
    @currency = {
      'USD' => response_obj['rates']['USD'],
      'IDR' => response_obj['rates']['IDR']
    }

  end
end

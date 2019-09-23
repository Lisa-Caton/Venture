require 'net/http'
require 'json'

class WelcomeController < ApplicationController
  def index
    url = "https://api.exchangerate-api.com/v4/latest/USD" # Setting URL
    uri = URI(url) # Uniform Resource Identifier
    response = Net::HTTP.get(uri)
    response_obj = JSON.parse(response)

    # Getting a rate
    @currency = response_obj['rates']

    @currencyCodeToNameHash = {
      'AED' => 'United Arab Emirates',
      'ARS' => 'Argentina',
      'AUD' => 'Australia',
      'BGN' => 'Bulgaria',
      'BRL' => 'Brazil',
      'BSD' => 'Bahamas',
      'CAD' => 'Canada',
      'CHF' => 'Switzerland',
      'CLP' => 'Chile',
      'CNY' => 'China',
      'COP' => 'Colombia',
      'CZK' => 'Czech Republic',
      'DKK' => 'Denmark',
      'DOP' => 'Dominican Republic',
      'EGP' => 'Egypt',
      'EUR' => 'Europe',
      'FJD' => 'Fiji',
      'GBP' => 'United Kingdom',
      'GTQ' => 'Guatemala',
      'HKD' => 'Hong Kong',
      'HRK' => 'Croatian',
      'HUF' => 'Hungary',
      'IDR' => 'Indonesia',
      'ILS' => 'Israel',
      'INR' => 'India',
      'ISK' => 'Iceland',
      'JPY' => 'Japan',
      'KRW' => 'Korea',
      'KZT' => 'Kazakhstan',
      'MXN' => 'Mexico',
      'MYR' => 'Malaysia',
      'NOK' => 'Norway',
      'NZD' => 'New Zealand',
      'PAB' => 'Panama',
      'PEN' => 'Peru',
      'PHP' => 'Philippines',
      'PKR' => 'Pakistan',
      'PLN' => 'Poland',
      'PYG' => 'Paraguay',
      'RON' => 'Romania',
      'RUB' => 'Russian Federation',
      'SAR' => 'Saudi Arabia',
      'SEK' => 'Sweden',
      'SGD' => 'Singapore',
      'THB' => 'Thailand',
      'TRY' => 'Turkey',
      'TWD' => 'Taiwan',
      'UAH' => 'Ukraine',
      'USD' => 'United States',
      'UYU' => 'Uruguay',
      'VND' => 'Vietnam',
      'ZAR' => 'South Africa'
    }

  end
end

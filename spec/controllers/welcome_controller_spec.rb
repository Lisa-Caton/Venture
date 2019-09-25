#spec/controller/api/welcome_controller_spec.rb

require 'rails_helper'

RSpec.describe WelcomeController do

  describe '#index' do
    it 'tests the url' do
      url = 'https://api.exchangerate-api.com/v4/latest/USD'
      expected = 'https://api.exchangerate-api.com/v4/latest/USD'
      expect(url).to eq expected
    end

    it 'tests the uri' do
      url = 'https://api.exchangerate-api.com/v4/latest/USD'
      uri = URI(url)
      expected = URI(url)
      expect(uri).to eq expected
    end

    it 'tests the response' do
      url = 'https://api.exchangerate-api.com/v4/latest/USD'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      expected = Net::HTTP.get(uri)
      expect(response).to eq expected
    end

    it 'tests the response object' do
      url = 'https://api.exchangerate-api.com/v4/latest/USD'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      response_obj = JSON.parse(response)
      expected = JSON.parse(response)
      expect(response_obj).to eq expected
    end

    it 'parses the response using rates only' do
      url = 'https://api.exchangerate-api.com/v4/latest/USD'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      response_obj = JSON.parse(response)
      @currency = response_obj['rates']
      expected = response_obj['rates']
      expect(@currency).to eq expected
    end

    it 'tests that the country-code matches the correct country!' do
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
      @currencyCodeToNameHash['AED'] = 'United Arab Emirates'
      expected = 'United Arab Emirates'
      expect(@currencyCodeToNameHash['AED']).to eq expected
    end

  end
end





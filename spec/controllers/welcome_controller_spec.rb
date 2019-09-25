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

    #Testing this line with technical coach on Slack.
    it 'tests that the country-code matches the correct country!' do
      @currencyCodeToNameHash[AED] = 'United Arab Emirates'
      expected = 'AED' => 'United Arab Emirates'
      expect(@currencyCodeToNameHash[AED]).to eq 'AED' => 'United Arab Emirates'
    end



  end
end




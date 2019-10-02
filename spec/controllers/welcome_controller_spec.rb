require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do
  describe '#index' do

# PASSES!
    # it 'renders the landing page returns correctly' do
    #    get :index
    #   expect(response).to render_template("index")
    # end

# PASSES!
    it 'renders the landing page returns correctly' do
       get :index
      expect(response).to render_template('welcome/index')
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

      expected = 'United Arab Emirates'
      expect(@currencyCodeToNameHash['AED']).to eq(expected)
    end


  end
end

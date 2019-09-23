#spec/controller/api/welcome_controller_spec.rb

require 'rails_helper'

RSpec.describe WelcomeController do
#1 Test the url
  it "should have proper routes" do
    {:get => "https://api.exchangerate-api.com/v4/latest/USD" }.should be_routable
  end

  # describe '#index' do
  #   it 'uses the correct url' do
  #     expect { get :index }.to eq "https://api.exchangerate-api.com/v4/latest/USD"
  #   end
  # end

#2 Test the http response
  # describe "#index" do
  #   it ""
  # end

#3 Test the countries
  # describe "#index" do
  #   it ""
  # end
end

require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do
  describe '#index' do

    it 'renders the landing page returns correctly' do
       get :index
      expect(response).to render_template('welcome/index')
    end

  end
end

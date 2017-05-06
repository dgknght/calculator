require 'rails_helper'

RSpec.describe CalculationsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #perform' do
    it 'returns http success' do
      get :perform
      expect(response).to have_http_status(:success)
    end
  end

end

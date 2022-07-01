require 'rails_helper'

describe "animals API", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  describe 'Get /animals' do
    before do
      Animal.create(:species => 'Cat', :breed => "Tabby", :age => 14, :name => "Gary", :gender => "Female")
    end

    it 'returns a subset of animals based on pagination' do
      get '/api/v2/animals?page=1', params: { limit: 5 }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).length).to eq(5)
    end
  end
end
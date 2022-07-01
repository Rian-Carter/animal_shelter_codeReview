require 'rails_helper'

describe "get all animals route", :type => :request do
  let!(:animals) {FactoryBot.create_list(:animal, 20)}

  before { get '/api/v2/animals'}

  it 'returns all paginated animals' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
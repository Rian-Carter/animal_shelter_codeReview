require 'rails_helper'

describe 'Delete animal route', :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    @animal_id = Animal.first.id
    delete "/api/v2/animals/#{@animal_id}"
  end

  it 'returns a deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("Deleted animal successfully.")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns a 404 status not found' do
    delete "/api/v2/animals/1000"
    expect(response.status).to eq(404)
  end
end
require 'rails_helper'

describe 'Delete animal route', :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    @animal_id = Animal.first.id
    delete "/animals/#{@animal_id}"
  end

  it 'returns a deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("Deleted animal successfully.")
  end
end
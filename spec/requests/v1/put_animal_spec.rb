require 'rails_helper'

describe "update an animal route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    put "/api/v1/animals/#{Animal.first.id}", params: { :species => 'Dog', :breed => 'Boxer', :age => 14, :name => 'Sadie', :gender => 'Female'}
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("Updated animal successfully.")
  end

  it 'should have a new species, breed, age, name, and gender' do
    expect(Animal.first.species).to eq('Dog')
    expect(Animal.first.breed).to eq('Boxer')
    expect(Animal.first.age).to eq(14)
    expect(Animal.first.name).to eq('Sadie')
    expect(Animal.first.gender).to eq('Female')
  end

  it 'returns a 404 status not found' do
    @new_name = 'test'
    @new_breed = 'test breed'
    put "/api/v1/animals/12", params: {name: @new_name, breed: @new_breed}
    expect(response.status).to eq(404)
  end
end
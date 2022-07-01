require 'rails_helper'

describe "post an animal route", :type => :request do

  before do
    post '/animals', params: { :species => 'Dog', :breed => 'boxer', :age => 14, :name => 'Sadie', :gender => 'Female'}
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('Sadie')
  end

  it 'returns the animal species' do
    expect(JSON.parse(response.body)['species']).to eq('Dog')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('boxer')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq(14)
  end

  it 'returns the animal gender' do
    expect(JSON.parse(response.body)['gender']).to eq('Female')
  end

end
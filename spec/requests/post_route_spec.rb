require 'rails_helper'

describe "post an animal route", :type => :request do

  before do
    post '/animals', params: { :species => 'Dog', :breed => 'boxer', :age => 14, :name => 'Sadie', :gender => 'Female'}
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('Sadie')
  end

end
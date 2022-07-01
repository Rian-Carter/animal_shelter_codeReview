require 'rails_helper'

describe "get all animals route", :type => :request do
  let!(:animals) {FactoryBot.create_list(:animal, 20)}

  before { get '/animals'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

end
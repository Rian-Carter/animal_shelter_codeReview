require 'rails_helper'

describe "get all search animals route", :type => :request do

  before do
    @animals = FactoryBot.create_list(:animal, 50)
    get '/search?gender=male'
  end

  it 'returns all male animals ' do
    result = JSON.parse(response.body).map{ |e| e.fetch("gender")}
    expect(result).to all(include('Male'))
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
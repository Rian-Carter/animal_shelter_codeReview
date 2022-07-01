require 'rails_helper'

describe "update an animal route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    put "/animals/#{Animal.first.id}", params: { :species => 'Dog', :breed => 'Boxer', :age => 14, :name => 'Sadie', :gender => 'Female'}
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end
end
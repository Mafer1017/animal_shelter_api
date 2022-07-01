require 'rails_helper'

describe "update a pet route", :type => :request do
  let!(:pets) { FactoryBot.create_list(:pet, 20)}

  before do
    put "/pets/#{Pet.first.id}", params: { :name => 'Jimmy', :species => 'Dog' }
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("This pet has been updated successfully.")
  end

  it 'should have updated information' do
    expect(Pet.first.name).to eq("Jimmy")
    expect(Pet.first.species).to eq("Dog")
  end
end
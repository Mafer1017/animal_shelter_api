require 'rails_helper'

describe "delete a pet listing route", :type => :request do
  let!(:pets) { FactoryBot.create_list(:pet, 20)}

  before do
    @pet_id = Pet.first.id
    delete "/pets/#{@pet_id}"
  end
  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("This pet has been removed successfully.")
  end
end 
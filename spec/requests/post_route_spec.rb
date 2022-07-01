require 'rails_helper'

describe "post a pet route", :type => :request do
  let!(:pets) { FactoryBot.create_list(:pet, 20)}

  before do
    post '/pets', params: { :name => 'Bob', :species => 'Dog'}
  end

  it 'returns pet species' do
    expect(JSON.parse(response.body)['species']).to eq('Dog')
  end

  it 'returns pet name' do
    expect(JSON.parse(response.body)['name']).to eq('Bob')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end 
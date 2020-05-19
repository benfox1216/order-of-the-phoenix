require 'rails_helper'

describe 'As a user' do
  it "I should be able to get a detailed list of Gryffindor members" do
    visit '/'
    select 'Gryffindor'
    click_button 'Search For Members'
  end
end
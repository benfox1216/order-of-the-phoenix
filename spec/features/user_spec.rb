require 'rails_helper'

describe 'As a user' do
  it "I should be able to get a detailed list of Gryffindor members" do
    visit '/'
    select 'Gryffindor'
    click_button 'Search For Members'
    
    expect(page).to have_content('Total: 21')
    expect(page).to have_content('Name: Aberforth Dumbledore')
    expect(page).to have_content("Role: Owner, Hog's Head Inn")
    expect(page).to have_content('Patronus: goat')
  end
end
require 'rails_helper'

feature 'User can manage list of trees' do
  scenario 'User can add trees to a list' do
    visit '/'
    click_on 'Trees'
    click_on 'Add a Tree'
    fill_in 'Tree name', :with => 'Linden'
    click_on 'Add this Tree'
    expect(page).to have_content('Linden')
  end
end

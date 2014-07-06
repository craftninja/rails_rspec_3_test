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

  scenario 'User can update trees' do
    incorrect_tree = 'Haw Apple Tree'
    correct_tree = 'Hawthorn'
    visit '/trees'
    click_on 'Add a Tree'
    fill_in 'Tree name', :with => incorrect_tree
    click_on 'Add this Tree'
    click_on incorrect_tree
    click_on 'Update tree'
    fill_in 'Tree name', :with => correct_tree
    click_on 'Update this tree'
    expect(page).to have_content(correct_tree)
  end

end

require 'rails_helper'

describe "the edit a user" do
  it "edits a user" do
    user = User.create(:name => 'Bill')
    visit users_path
    click_on 'Bill'
    click_on 'Edit User'
    fill_in 'Name', :with => 'Charlie'
    click_on 'Update User'
    expect(page).to have_content 'Charlie'
  end

  it "gives error when no name is entered" do
    user = User.create(:name => 'Charlie')
    visit users_path
    click_on 'Charlie'
    click_on 'Edit User'
    fill_in 'Name', :with => ''
    click_on 'Update User'
    expect(page).to have_content 'errors'
  end
end

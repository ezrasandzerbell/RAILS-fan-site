require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit users_path
    click_link 'New User'
    fill_in 'Name', :with => 'Bill'
    click_on 'Create User'
    expect(page).to have_content 'Users'
  end

  it "gives error when no name is entered" do
    visit new_user_path
    click_on 'Create User'
    expect(page).to have_content 'errors'
  end
end

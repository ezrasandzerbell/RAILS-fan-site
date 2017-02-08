require 'rails_helper'

describe "the create a new user process" do
  it "creates a new user" do
    visit users_path
    click_on 'New User'
    fill_in 'Name', :with => 'Home Pie'
    click_on 'Create User'
    expect(page).to have_content 'Home Pie'
  end
end

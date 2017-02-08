require 'rails_helper'

describe "the create a new work process" do
  it "creates a new work" do
    user = User.create(:name => 'Home Slice')
    visit user_path(user)
    click_link 'Add a work'
    fill_in 'Name', :with => 'Home Pie'
    fill_in 'Image', :with => 'image'
    fill_in 'Media', :with => 'media'
    fill_in 'Published', :with => 'published'
    fill_in 'Rating', :with => 5
    fill_in 'Content', :with => 'content'
    click_on 'Create Work'
    expect(page).to have_content 'Home Pie'
  end
end

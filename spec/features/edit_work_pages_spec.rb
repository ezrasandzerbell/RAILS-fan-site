require 'rails_helper'

describe "the edit a work process" do
  it "edits a work" do
    user = User.create(:name => 'Home Slice')
    work = Work.create(:name => 'Beatles', :image => 'image', :media => 'media', :published => 'date', :rating => 5, :content => "content", :user_id => user.id)
    visit user_path(user)
    click_on 'Edit'
    fill_in 'Name', :with => 'Home Pie'
    click_on 'Update Work'
    expect(page).to have_content 'Home Pie'
  end

  it "gives error when no name is entered" do
    user = User.create(:name => 'Pizza')
    work = Work.create(:name => 'Beatles', :image => 'image', :media => 'media', :published => 'date', :rating => 5, :content => "content", :user_id => user.id)
    visit user_path(user)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_button 'Update Work'
    expect(page).to have_content 'errors'
  end
end

require 'rails_helper'

describe "the view a work process" do
  it "views a work" do
    user = User.create(:name => 'Home Slice')
    work = Work.create(:name => 'Beatles', :image => 'image', :media => 'media', :published => 'date', :rating => 5, :content => "content", :user_id => user.id)
    visit user_path(user)
    click_on 'Beatles'
    expect(page).to have_content 'content'
  end
end

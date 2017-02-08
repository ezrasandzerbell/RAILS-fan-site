require 'rails_helper'

describe "navigate to target destination" do
  it "nav from user id page to main user page" do
    user = User.create(:name => 'Home Slice')
    work = Work.create(:name => 'Beatles', :image => 'image', :media => 'media', :published => 'date', :rating => 5, :content => "content", :user_id => user.id)
    visit user_path(user)
    click_on 'Return to users'
    expect(page).to have_content 'Users'
  end
  
end

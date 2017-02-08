require 'rails_helper'

describe "the delete a work process" do
  it "deletes a work" do
    user = User.create(:name => 'Homey')
    work = Work.create(:name => 'Beatles', :image => 'image', :media => 'media', :published => 'date', :rating => 5, :content => "content", :user_id => user.id)
    visit user_path(user)
    click_on 'Delete'
    expect(page).to have_content 'There are no works yet'
  end
end

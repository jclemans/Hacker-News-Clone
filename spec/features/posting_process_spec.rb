require 'spec_helper'

feature "posting process" do
  scenario "posts a new link" do
    post = FactoryGirl.build :post
    visit '/'
    click_link 'Add Link'
    fill_in "Link", with: post.link
    click_button "Post Link"
    page.should have_content "Post was successfully added."
  end
end

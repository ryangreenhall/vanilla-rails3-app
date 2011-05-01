require 'spec_helper'

describe "Homepage" do
  it "should have a title" do
    visit "/"
    response.status.should be(200)
    response.should have_selector('title', :content => "Home")
  end
end

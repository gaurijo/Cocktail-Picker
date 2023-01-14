require 'rails_helper'

RSpec.describe "User registration form" do
  it "creates new user" do
    visit "/"

    click_on "Register as a User"

    expect(current_path).to eq(new_user_path)

    username = "test"
    password = "test123"

    fill_in :user_username, with: username
    fill_in :user_password, with: password

    click_on "Create User"

    expect(current_path).to eq(root_path)
    # expect(page).to have_content("Welcome, #{username}!")
  end
end
require 'rails_helper'

RSpec.describe "User",type: :system do
  before do
    @user = FactoryBot.create(:user)
  end

  it "user login" do
    visit root_path
    click_on "ログイン",match: :first
    fill_in "email",with: @user.email
    fill_in "password",with: @user.password
    click_button "ログイン"
    expect(page).to have_content "ログインしました"
  end
end
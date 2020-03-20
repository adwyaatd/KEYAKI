require 'rails_helper'

RSpec.describe "User",type: :system do
  before do
    user = FactoryBot.create(:user)
  end

  it "user login" do
    visit root_path
    click_on "ログイン"
    fill_in "email",with: user.email
    fill_in "passworddigest",with: user.passworddigest
    click_on "ログイン"
    expect(page).to have_content "ログインしました"
  end
end
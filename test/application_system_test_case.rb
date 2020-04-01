require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :firefox, screen_size: [1400, 1400]

  def sign_in_as_first_user
    visit new_user_session_path
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: 'password'
    click_on "Log in"
    assert_selector "p", text: "Signed in successfully."
  end
end

require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request_obj = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    sign_in_as_first_user
    visit requests_url
    click_on "Create Request"

    check "Active" if @request_obj.active
    fill_in "Notes", with: @request_obj.notes
    select @request_obj.service.name, from: 'Service'
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    sign_in_as_first_user

    visit requests_url
    find(:xpath, './/tbody').click_link("Edit", match: :first)

    check "Active" if @request_obj.active
    fill_in "Notes", with: @request_obj.notes
    select @request_obj.service.name, from: 'Service'
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    sign_in_as_first_user
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end

require "application_system_test_case"

class ProposalsTest < ApplicationSystemTestCase
  setup do
    @proposal = proposals(:one)
  end

  test "visiting the index" do
    visit proposals_url
    assert_selector "h1", text: "Proposals"
  end

  test "creating a Proposal" do
    visit proposals_url
    click_on "New Proposal"

    check "Active" if @proposal.active
    fill_in "Notes", with: @proposal.notes
    fill_in "Service", with: @proposal.service_id
    fill_in "User", with: @proposal.user_id
    click_on "Create Proposal"

    assert_text "Proposal was successfully created"
    click_on "Back"
  end

  test "updating a Proposal" do
    visit proposals_url
    click_on "Edit", match: :first

    check "Active" if @proposal.active
    fill_in "Notes", with: @proposal.notes
    fill_in "Service", with: @proposal.service_id
    fill_in "User", with: @proposal.user_id
    click_on "Update Proposal"

    assert_text "Proposal was successfully updated"
    click_on "Back"
  end

  test "destroying a Proposal" do
    visit proposals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proposal was successfully destroyed"
  end
end

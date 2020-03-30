require 'test_helper'

class ProposalsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @proposal = proposals(:one)
  end

  test "should get index" do
    get proposals_url
    assert_response :success
  end

  test "new when logged in should get success" do
    sign_in users(:one)
    get new_proposal_url
    assert_response :success
  end

  test "new when not logged in should get redirect" do
    get new_proposal_url
    assert_response :redirect
  end

  test "create when logged in should increase count" do
    sign_in users(:one)
    assert_difference('Proposal.count') do
      post proposals_url, params: { proposal: { active: @proposal.active, notes: @proposal.notes, service_id: @proposal.service_id, user_id: @proposal.user_id } }
    end

    assert_redirected_to proposal_url(Proposal.last)
  end

  test "should show proposal" do
    get proposal_url(@proposal)
    assert_response :success
  end

  test "should get edit" do
    get edit_proposal_url(@proposal)
    assert_response :success
  end

  test "should update proposal" do
    patch proposal_url(@proposal), params: { proposal: { active: @proposal.active, notes: @proposal.notes, service_id: @proposal.service_id, user_id: @proposal.user_id } }
    assert_redirected_to proposal_url(@proposal)
  end

  test "destroy when logged in should decrease count" do
    sign_in users(:one)
    assert_difference('Proposal.count', -1) do
      delete proposal_url(@proposal)
    end

    assert_redirected_to proposals_url
  end

end

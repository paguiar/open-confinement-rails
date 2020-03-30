require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @request_obj = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "new when logged in should get success" do
    sign_in users(:one)
    get new_request_url
    assert_response :success
  end

  test "new when not logged in should get redirect" do
    get new_request_url
    assert_response :redirect
  end

  test "create when logged in should increase count" do
    sign_in users(:one)
    assert_difference('Request.count') do
      post requests_url, params: { request: { active: @request_obj.active, notes: @request_obj.notes, service_id: @request_obj.service_id, user_id: @request_obj.user_id } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request_obj)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request_obj)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request_obj), params: { request: { active: @request_obj.active, notes: @request_obj.notes, service_id: @request_obj.service_id, user_id: @request_obj.user_id } }
    assert_redirected_to request_url(@request_obj)
  end

  test "destroy when logged in should decrease count" do
    sign_in users(:one)
    assert_difference('Request.count', -1) do
      delete request_url(@request_obj)
    end

    assert_redirected_to requests_url
  end
end

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get users_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, email: "something#{@user.email}", latitude: @user.latitude, longitude: @user.longitude, name: @user.name, phone: @user.phone, password: 'password', password_confirmation: 'password'} }
    end

    assert_redirected_to pages_index_path
  end

  test "should show user" do
    sign_in users(:one)
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    sign_in users(:one)
    patch user_url(@user), params: { user: { address: @user.address, email: @user.email, latitude: @user.latitude, longitude: @user.longitude, name: @user.name, phone: @user.phone } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    sign_in users(:one)
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end

require 'test_helper'

class ReviewssControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reviewss_index_url
    assert_response :success
  end

  test "should get show" do
    get reviewss_show_url
    assert_response :success
  end

  test "should get destroy" do
    get reviewss_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get reviewss_edit_url
    assert_response :success
  end

  test "should get update" do
    get reviewss_update_url
    assert_response :success
  end

  test "should get new" do
    get reviewss_new_url
    assert_response :success
  end

  test "should get create" do
    get reviewss_create_url
    assert_response :success
  end

end

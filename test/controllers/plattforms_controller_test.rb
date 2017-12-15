require 'test_helper'

class PlattformsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plattforms_index_url
    assert_response :success
  end

  test "should get new" do
    get plattforms_new_url
    assert_response :success
  end

  test "should get create" do
    get plattforms_create_url
    assert_response :success
  end

  test "should get edit" do
    get plattforms_edit_url
    assert_response :success
  end

  test "should get udate" do
    get plattforms_udate_url
    assert_response :success
  end

  test "should get show" do
    get plattforms_show_url
    assert_response :success
  end

  test "should get destroy" do
    get plattforms_destroy_url
    assert_response :success
  end

end

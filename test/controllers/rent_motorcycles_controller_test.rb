require "test_helper"

class RentMotorcyclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rent_motorcycles_index_url
    assert_response :success
  end

  test "should get show" do
    get rent_motorcycles_show_url
    assert_response :success
  end

  test "should get new" do
    get rent_motorcycles_new_url
    assert_response :success
  end

  test "should get create" do
    get rent_motorcycles_create_url
    assert_response :success
  end

  test "should get edit" do
    get rent_motorcycles_edit_url
    assert_response :success
  end

  test "should get update" do
    get rent_motorcycles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rent_motorcycles_destroy_url
    assert_response :success
  end
end

require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should get character" do
    get dashboard_character_url
    assert_response :success
  end

  test "should get map" do
    get dashboard_map_url
    assert_response :success
  end

  test "should get inventory" do
    get dashboard_inventory_url
    assert_response :success
  end

  test "should get ability" do
    get dashboard_ability_url
    assert_response :success
  end

end

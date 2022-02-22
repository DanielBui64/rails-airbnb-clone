require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should get my_bookings" do
    get dashboard_my_bookings_url
    assert_response :success
  end

  test "should get my_boats" do
    get dashboard_my_boats_url
    assert_response :success
  end
end

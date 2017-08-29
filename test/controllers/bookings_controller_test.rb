require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

end

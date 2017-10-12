require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @booking = bookings(:one)
    @other_booking = bookings(:two)
  end

  test 'should get index' do
    get bookings_url
    assert_response :success
  end

  test 'should get new' do
    get new_booking_url
    assert_response :success
  end
end

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def setup
    @booking = bookings(:one)
  end

  test "should be valid" do
    assert @booking.valid?
  end

  test "name should be present" do
    assert @booking.name = "    "
    assert @booking.invalid?
  end

  test 'date should be present' do
    assert @booking.date = "  "
    assert_not @booking.valid?
  end

  test 'time should be present' do
    assert @booking.time = "  "
    assert_not @booking.valid?
  end
end

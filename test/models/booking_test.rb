require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def setup
    @booking = Booking.new(name: 'Red Hendery', date: '05/29/2107', time: '2:00 PM')
  end
end

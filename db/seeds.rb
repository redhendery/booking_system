User.create!([{
  name: 'Red Hendery',
  email: 'red@email.com',
  password: 'iamred',
  password_confirmation: 'iamred',
  admin: true
}, {
  name: 'Mike Michaelson',
  email: 'mike@mike.com',
  password: 'iammike',
  password_confirmation: 'iammike',
  admin: false
}])

p "Added #{User.count} Users"

Booking.create(
  name: 'Red Hendery',
  date: '05/29/2017',
  time: '2000-01-01 14:10:00 UTC'
)

p "Added #{Booking.count} Bookings"

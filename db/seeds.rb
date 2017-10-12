User.create([{
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

Booking.create([{
  name: 'Red Hendery',
  date: '2017-08-25',
  time: '2017-08-25 10:51:44',
  user_id: 1
}, {
  name: 'Mike Michaelson',
  date: '2017-05-25',
  time: '2017-05-25 10:45:44',
  user_id: 2
}])

p "Added #{Booking.count} Bookings"

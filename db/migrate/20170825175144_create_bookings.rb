class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end

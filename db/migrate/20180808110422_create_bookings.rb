class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :customer, foreign_key: true
      t.references :provider, foreign_key: true
      t.references :service, foreign_key: true
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :price
      t.string :status
      t.text :details

      t.timestamps
    end
  end
end

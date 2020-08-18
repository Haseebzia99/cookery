class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chef 
      t.datetime :date
      t.text :description
      t.string :postcode

      t.timestamps
    end
    add_foreign_key :bookings, :users, column: :chef_id, primary_key: :id 
  end
end

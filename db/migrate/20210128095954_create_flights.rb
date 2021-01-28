class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :from_airport, null: false, foreign_key: { to_table: :airports }
      t.references :to_airport, null: false, foreign_key: { to_table: :airports }

      t.datetime :datetime, null: false
      t.integer :duration, null: false

      t.timestamps
    end
  end
end

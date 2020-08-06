class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :notes
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6
      t.integer :zoom
      t.string :street
      t.string :city
      t.string :state
      t.references :region, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

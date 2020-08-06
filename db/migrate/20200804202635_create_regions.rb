class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.integer :lat, precision: 10, scale: 6
      t.integer :lng, precision: 10, scale: 6
      t.integer :zoom

      t.timestamps
    end
  end
end

class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.integer :lat
      t.integer :lng
      t.integer :zoom

      t.timestamps
    end
  end
end

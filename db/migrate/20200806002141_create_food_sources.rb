class CreateFoodSources < ActiveRecord::Migration[6.0]
  def change
    create_table :food_sources do |t|
      t.string :name
      t.text :notes
      t.boolean :available
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class AddZipcodeToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :zipcode, :integer
  end
end

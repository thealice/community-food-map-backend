class RemoveRegionFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :region, foreign_key: true
  end
end

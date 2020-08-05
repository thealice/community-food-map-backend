class ChangeRegionsLatAndLngDatatype < ActiveRecord::Migration[6.0]
  change_table :regions do |t|
    t.change :lat, :decimal, {precision: 10, scale: 6}
    t.change :lng, :decimal, {precision: 10, scale: 6}
  end
end

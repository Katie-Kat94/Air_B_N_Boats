class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :boats, :location, :address
  end
end

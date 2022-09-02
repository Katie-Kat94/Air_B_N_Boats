class ChangeAddresstoLocation < ActiveRecord::Migration[7.0]
  def change
    rename_column :boats, :address, :location
  end
end

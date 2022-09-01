class Fixavailabilitydefault < ActiveRecord::Migration[7.0]
  def change
    change_column :boats, :available, :boolean, null: false, default: true
  end
end

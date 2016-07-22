class AddObservationRowToItem < ActiveRecord::Migration
  def change
    add_column :items, :observations, :text
  end
end

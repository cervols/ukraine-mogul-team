class AddQuantityToPositions < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :quantity, :integer, default: 1
  end
end

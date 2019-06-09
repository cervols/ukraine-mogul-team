class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :brand
      t.string :description
      t.string :color
      t.string :condition
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :color
      t.string :size
      t.float :price

      t.timestamps
    end
  end
end

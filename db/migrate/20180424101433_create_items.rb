class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :brand
      t.string :type
      t.text :description
      t.string :condition
      t.string :finish
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end

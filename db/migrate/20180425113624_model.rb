class Model < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :type, :model
  end
end

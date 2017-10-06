class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :type
      t.integer :stock

      t.timestamps
    end
  end
end

class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :product_id
      t.string :name
      t.decimal :unit_price
      t.decimal :unit
      t.datetime :effective_date
      t.datetime :purchase_date
      t.text :description

      t.timestamps
    end
  end
end

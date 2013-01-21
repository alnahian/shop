class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :product_id
      t.decimal :unit
      t.decimal :unit_price
      t.datetime :effective_date
      t.datetime :purchase_date
      t.text :description

      t.timestamps
    end
  end
end

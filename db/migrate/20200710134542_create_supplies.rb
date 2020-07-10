class CreateSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :supplies do |t|
      t.string :name
      t.string :department
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end

class CreateBorrowers < ActiveRecord::Migration[5.0]
  def change
    create_table :borrowers do |t|
      t.string :name
      t.text :memo
      t.integer :price

      t.timestamps
    end
  end
end

class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :titolo
      t.text :decrizione
      t.decimal :price

      t.timestamps null: false
    end
  end
end

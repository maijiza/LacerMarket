class CreateSails < ActiveRecord::Migration
  def change
    create_table :sails do |t|
      t.string :email_cuirente
      t.string :email_venditore
      t.string :guid
      t.ineger :content_id

      t.timestamps null: false
    end
  end
end

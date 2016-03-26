# Este archivo debe contener una migración 
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date   :birthday
      t.string :email
      t.string :phone
      # Agrega aquí las columnas que faltan
      t.timestamps
    end
  end
end

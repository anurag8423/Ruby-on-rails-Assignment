class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :phone
      t.string :symptom
      t.integer :bill

      t.timestamps
    end
  end
end

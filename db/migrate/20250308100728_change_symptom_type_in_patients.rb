class ChangeSymptomTypeInPatients < ActiveRecord::Migration[8.0]
  def change
    
    add_column :patients, :symptoms_temp, :text
    
    remove_column :patients, :symptom
    
    rename_column :patients, :symptoms_temp, :symptom
  end
end
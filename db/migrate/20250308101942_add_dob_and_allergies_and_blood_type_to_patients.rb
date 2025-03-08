class AddDobAndAllergiesAndBloodTypeToPatients < ActiveRecord::Migration[8.0]
  def change
    add_column :patients, :dob, :date
    add_column :patients, :allergies, :text
    add_column :patients, :blood_type, :string
  end
end

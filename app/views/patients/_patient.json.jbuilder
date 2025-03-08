json.extract! patient, :id, :name, :gender, :age, :phone, :symptom, :bill, :created_at, :updated_at
json.url patient_url(patient, format: :json)

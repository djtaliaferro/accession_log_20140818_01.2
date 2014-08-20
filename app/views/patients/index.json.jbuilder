json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :last_name, :ssn, :date_of_birth, :accession_log_id
  json.url patient_url(patient, format: :json)
end

json.array!(@accession_logs) do |accession_log|
  json.extract! accession_log, :id, :date_received, :date_received_physicians_office, :user_id
  json.url accession_log_url(accession_log, format: :json)
end

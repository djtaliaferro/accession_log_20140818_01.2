json.array!(@accounts) do |account|
  json.extract! account, :id, :prefix, :company_name, :accession_log_id
  json.url account_url(account, format: :json)
end

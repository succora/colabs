json.array!(@creds) do |cred|
  json.extract! cred, :id, :first_name, :last_name, :email
  json.url cred_url(cred, format: :json)
end

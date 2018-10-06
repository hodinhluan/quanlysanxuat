json.extract! error, :id, :error_title, :error_detail, :created_at, :updated_at
json.url error_url(error, format: :json)

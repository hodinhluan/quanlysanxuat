json.extract! daily_report, :id, :date, :name, :note, :error_id, :group_id, :created_at, :updated_at
json.url daily_report_url(daily_report, format: :json)

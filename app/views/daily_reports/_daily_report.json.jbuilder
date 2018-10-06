json.extract! daily_report, :id, :date, :title, :note, :group_id, :user_id, :created_at, :updated_at
json.url daily_report_url(daily_report, format: :json)

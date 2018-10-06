class CreateJoinTableDailyReportError < ActiveRecord::Migration[5.2]
  def change
    create_join_table :daily_reports, :errors do |t|
      # t.index [:daily_report_id, :error_id]
      # t.index [:error_id, :daily_report_id]
    end
  end
end

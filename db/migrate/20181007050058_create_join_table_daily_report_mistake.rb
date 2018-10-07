class CreateJoinTableDailyReportMistake < ActiveRecord::Migration[5.2]
  def change
    create_join_table :daily_reports, :mistakes do |t|
    end
  end
end

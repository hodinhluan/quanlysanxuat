class Group < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :mistakes, class_name: "Error"
  has_many :daily_reports
end

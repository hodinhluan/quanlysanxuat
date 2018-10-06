class DailyReport < ApplicationRecord
  has_and_belongs_to_many :mistakes, class_name: "Error" 
  belongs_to :group
  belongs_to :user
  accepts_nested_attributes_for :mistakes
end

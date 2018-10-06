class Error < ApplicationRecord
  belongs_to :group
  has_and_belongs_to_many :daily_reports
end

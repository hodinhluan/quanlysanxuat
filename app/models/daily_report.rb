class DailyReport < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_and_belongs_to_many :mistakes

  validates :date, presence: true
  validates :title, presence: true, length: {maximum: 50}
  validates :mistakes, presence: true
end

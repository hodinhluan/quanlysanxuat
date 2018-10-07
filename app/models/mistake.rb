class Mistake < ApplicationRecord
  belongs_to :group
  validates :mistake_title, presence: true

  def name
    "#{mistake_title}"
  end
end

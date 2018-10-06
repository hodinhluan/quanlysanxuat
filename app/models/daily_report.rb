class DailyReport < ApplicationRecord
  belongs_to :error
  belongs_to :group
end

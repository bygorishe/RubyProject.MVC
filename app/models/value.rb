class Value < ApplicationRecord
  belongs_to :user

  validates :values, comparison: { greater_than: 0 }
end

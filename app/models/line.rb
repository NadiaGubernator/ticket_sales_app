class Line < ApplicationRecord
  has_many :tickets
  default_scope -> { order(created_at: :asc) }
  validates :seats_total, presence: true
  validates :departure_city, presence: true, length: { maximum: 50 }
  validates :departure_time, presence: true
  validates :arrival_city, presence: true, length: { maximum: 50 }
  validates :arrival_time, presence: true
end

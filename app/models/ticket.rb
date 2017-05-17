class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :line, dependent: :destroy
end

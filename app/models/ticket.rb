class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :line
end

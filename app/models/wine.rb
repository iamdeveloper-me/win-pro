class Wine < ApplicationRecord
  scope :order_by_desc, -> { order(created_at: :desc) }
end

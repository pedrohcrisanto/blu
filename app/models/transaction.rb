class Transaction < ApplicationRecord
  belongs_to :type
  belongs_to :store
  has_one_attached :file
end

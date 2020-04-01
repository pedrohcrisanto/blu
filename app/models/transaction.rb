class Transaction < ApplicationRecord
  belongs_to :type
  has_one_attached :file
end

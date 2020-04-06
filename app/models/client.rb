class Client < ApplicationRecord
  has_many :transactions
  has_one_attached :file
end

class Client < ApplicationRecord
    has_many :transactions
    accepts_nested_attributes_for :transactions, allow_destroy: true
    has_one_attached :file
end

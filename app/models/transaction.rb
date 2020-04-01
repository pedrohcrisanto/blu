class Transaction < ApplicationRecord
  belongs_to :type
  belongs_to :store
end

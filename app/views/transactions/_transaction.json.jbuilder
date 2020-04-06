json.extract! transaction, :id, :type, :nature, :store_owner, :store_name, :date, :value, :cpf, :card, :hour, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

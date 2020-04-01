json.extract! transaction, :id, :type_id, :store_id, :date, :value, :cpf, :card, :hour, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

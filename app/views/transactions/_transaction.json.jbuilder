json.extract! transaction, :id, :type_transaction, :nature, :store_owner, :store_name, :date, :value, :cpf, :card, :hour, :client_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

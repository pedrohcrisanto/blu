# client = Client.create!(name: "Contabill", transactions_attributes: [
#     type_transaction: "1", nature: "Entrada", store_owner:"Pedro", store_name:"Loja", date: DateTime.now, value: 1233 , cpf:"123123", card:"BB", hour: Time.now
#   ])


  params = { client: {
 name: 'lorem ipsum?',
 transactions_attributes: [
 { type_transaction: "1", nature: "Entrada", store_owner:"Pedro", store_name:"Loja", date: DateTime.now, value: 1233 , cpf:"123123", card:"BB", hour: Time.now},
 { type_transaction: "1", nature: "Saida", store_owner:"Pedro2", store_name:"Loja", date: DateTime.now, value: 1233 , cpf:"123123", card:"BB", hour: Time.now},
 { type_transaction: "1", nature: "Entrada", store_owner:"Pedro3", store_name:"Loja", date: DateTime.now, value: 1233 , cpf:"123123", card:"BB", hour: Time.now} ]
}}
client = Client.create!(params[:client])
client.transactions
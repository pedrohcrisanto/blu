class Client < ApplicationRecord
    has_many :transactions
    accepts_nested_attributes_for :transactions, allow_destroy: true
    has_one_attached :file
    after_create :save_bd
    after_create :set_nature
    after_create :set_type_transaction
    after_create :set_balance
    def set_balance
      total_entry = 0
      total_output = 0
      self.transactions.each do |transaction|
        if transaction.nature == "Entrada"
          total_entry += transaction.value
        end
        if transaction.nature == "Saída"
          total_output += transaction.value
        end
      end
      self.update(balance: total_entry - total_output)
    end
    def set_nature
      self.transactions.each do |transaction|
        case transaction.type_transaction
        when "1"
          transaction.update(nature: "Entrada")
        when "2"
          transaction.update(nature: "Saída")
        when "3"
          transaction.update(nature: "Saída")
        when "4"
          transaction.update(nature: "Entrada")
        when "5"
          transaction.update(nature: "Entrada")
        when "6"
          transaction.update(nature: "Entrada")
        when "7"
          transaction.update(nature: "Entrada")
        when "8"
          transaction.update(nature: "Entrada")
        when "9"
          transaction.update(nature: "Saída")
        else
          "Não possui natureza"
        end
      end
    end
      
    def file_path
      ActiveStorage::Blob.service.path_for(file.key)
    end

    def set_type_transaction
      self.transactions.each do |transaction|
        case transaction.type_transaction
        when "1"
          transaction.update(type_transaction: "Débito")
        when "2"
          transaction.update(type_transaction: "Boleto")
        when "3"
          transaction.update(type_transaction: "Financiamento")
        when "4"
          transaction.update(type_transaction: "Crédito")
        when "5"
          transaction.update(type_transaction: "Recebimento Empréstimo")
        when "6"
          transaction.update(type_transaction: "Vendas")
        when "7"
          transaction.update(type_transaction: "Recebimento TED")
        when "8"
          transaction.update(type_transaction: "Recebimento DOC")
        when "9"
          transaction.update(type_transaction: "Aluguel")
        else
          "Não possui tipo"
        end
      end
    end

    def read_txt
        File.readlines( self.file_path )
    end

    def save_bd
        line_1 = self.read_txt[0]
        line_2 = self.read_txt[1]
        line_3 = self.read_txt[2]
        line_4 = self.read_txt[3]
        line_5 = self.read_txt[4]
        line_6 = self.read_txt[5]
        line_7 = self.read_txt[6]
        line_8 = self.read_txt[7]
        line_9 = self.read_txt[8]
        line_10 = self.read_txt[9]
        line_11 = self.read_txt[10]
        line_12 = self.read_txt[11]
        line_13 = self.read_txt[12]
        line_14 = self.read_txt[13]
        line_15 = self.read_txt[14]
        line_16 = self.read_txt[15]
        line_17 = self.read_txt[16]
        line_18 = self.read_txt[17]
        line_19 = self.read_txt[18]
        line_20 = self.read_txt[19]
        line_21 = self.read_txt[20]

        params = { transaction: {
            transactions_attributes: [
            { type_transaction: line_1[0], store_owner: line_1[48..61], store_name: line_1[62..80], date: line_1[1..8], value: line_1[9..18], cpf: line_1[19..29], card: line_1[30..41], hour: line_1[42..47] },
            { type_transaction: line_2[0], store_owner: line_2[48..61], store_name: line_2[62..80], date: line_2[1..8], value: line_2[9..18], cpf: line_2[19..29], card: line_2[30..41], hour: line_2[42..47] },
            { type_transaction: line_3[0], store_owner: line_3[48..61], store_name: line_3[62..80], date: line_3[1..8], value: line_3[9..18], cpf: line_3[19..29], card: line_3[30..41], hour: line_3[42..47] },
            { type_transaction: line_4[0], store_owner: line_4[48..61], store_name: line_4[62..80], date: line_4[1..8], value: line_4[9..18], cpf: line_4[19..29], card: line_4[30..41], hour: line_4[42..47] },
            { type_transaction: line_5[0], store_owner: line_5[48..61], store_name: line_5[62..80], date: line_5[1..8], value: line_5[9..18], cpf: line_5[19..29], card: line_5[30..41], hour: line_5[42..47] },
            { type_transaction: line_6[0], store_owner: line_6[48..61], store_name: line_6[62..80], date: line_6[1..8], value: line_6[9..18], cpf: line_6[19..29], card: line_6[30..41], hour: line_6[42..47] },
            { type_transaction: line_7[0], store_owner: line_7[48..61], store_name: line_7[62..80], date: line_7[1..8], value: line_7[9..18], cpf: line_7[19..29], card: line_7[30..41], hour: line_7[42..47] },
            { type_transaction: line_8[0], store_owner: line_8[48..61], store_name: line_8[62..80], date: line_8[1..8], value: line_8[9..18], cpf: line_8[19..29], card: line_8[30..41], hour: line_8[42..47] },
            { type_transaction: line_9[0], store_owner: line_9[48..61], store_name: line_9[62..80], date: line_9[1..8], value: line_9[9..18], cpf: line_9[19..29], card: line_9[30..41], hour: line_9[42..47] },
            { type_transaction: line_10[0], store_owner: line_10[48..61], store_name: line_10[62..80], date: line_10[1..8], value: line_10[9..18], cpf: line_10[19..29], card: line_10[30..41], hour: line_10[42..47] },
            { type_transaction: line_11[0], store_owner: line_11[48..61], store_name: line_11[62..80], date: line_11[1..8], value: line_11[9..18], cpf: line_11[19..29], card: line_11[30..41], hour: line_11[42..47] },
            { type_transaction: line_12[0], store_owner: line_12[48..61], store_name: line_12[62..80], date: line_12[1..8], value: line_12[9..18], cpf: line_12[19..29], card: line_12[30..41], hour: line_12[42..47] },
            { type_transaction: line_13[0], store_owner: line_13[48..61], store_name: line_13[62..80], date: line_13[1..8], value: line_13[9..18], cpf: line_13[19..29], card: line_13[30..41], hour: line_13[42..47] },
            { type_transaction: line_14[0], store_owner: line_14[48..61], store_name: line_14[62..80], date: line_14[1..8], value: line_14[9..18], cpf: line_14[19..29], card: line_14[30..41], hour: line_14[42..47] },
            { type_transaction: line_15[0], store_owner: line_15[48..61], store_name: line_15[62..80], date: line_15[1..8], value: line_15[9..18], cpf: line_15[19..29], card: line_15[30..41], hour: line_15[42..47] },
            { type_transaction: line_16[0], store_owner: line_16[48..61], store_name: line_16[62..80], date: line_16[1..8], value: line_16[9..18], cpf: line_16[19..29], card: line_16[30..41], hour: line_16[42..47] },
            { type_transaction: line_17[0], store_owner: line_17[48..61], store_name: line_17[62..80], date: line_17[1..8], value: line_17[9..18], cpf: line_17[19..29], card: line_17[30..41], hour: line_17[42..47] },
            { type_transaction: line_18[0], store_owner: line_18[48..61], store_name: line_18[62..80], date: line_18[1..8], value: line_18[9..18], cpf: line_18[19..29], card: line_18[30..41], hour: line_18[42..47] },
            { type_transaction: line_19[0], store_owner: line_19[48..61], store_name: line_19[62..80], date: line_19[1..8], value: line_19[9..18], cpf: line_19[19..29], card: line_19[30..41], hour: line_19[42..47] },
            { type_transaction: line_20[0], store_owner: line_20[48..61], store_name: line_20[62..80], date: line_20[1..8], value: line_20[9..18], cpf: line_20[19..29], card: line_20[30..41], hour: line_20[42..47] },
            { type_transaction: line_21[0], store_owner: line_21[48..61], store_name: line_21[62..80], date: line_21[1..8], value: line_21[9..18], cpf: line_21[19..29], card: line_21[30..41], hour: line_21[42..47] }
        ]
           }}

        self.update(params[:transaction])
    end

end

class Client < ApplicationRecord
    has_many :transactions
    accepts_nested_attributes_for :transactions, allow_destroy: true
    has_one_attached :file
    def file_path
        ActiveStorage::Blob.service.path_for(file.key)
      end


    def read_txt
        File.read( self.file_path ) do |line|
            puts line
          end
    end

end

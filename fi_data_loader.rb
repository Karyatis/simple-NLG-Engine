require 'csv'

module FIDataLoader

def self.parse(filename)
        fi_data = []
        CSV.foreach(filename, headers: true, header_converters: :symbol, converters: :all) do |row|
            fi_data << FIData.new(row)
        end
        fi_data
    end
end
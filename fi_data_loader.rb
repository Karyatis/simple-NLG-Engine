require 'csv'

module FIDataLoader

	def self.get_fidata_from_csv(filepath)
		fi_data = []
		CSV.foreach(filepath, headers:true, header_converters: :symbol, converters: :all) do |row|
			fi_data << FIData.new(row)
		end
		fi_data
	end
end
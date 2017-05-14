require_relative 'fi_data'
require_relative 'fi_data_loader'
require_relative 'establishments'

	include FIDataLoader

zip_code = ARGV.first
filepath = ARGV.last

fi_data = FIDataLoader.parse(filepath)
establishments = Establishments.new(fi_data: fi_data)

if fi_data.any? {|establishment| establishment.zipcode.include?(zip_code)}
	establishments.to_pretty_string(zip_code)
else
	establishments.zipcode_fail_msg
end
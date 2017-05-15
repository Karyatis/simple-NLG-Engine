require_relative 'fi_data'
require_relative 'fi_data_loader'
require_relative 'establishment'

	include FIDataLoader

zip_code = ARGV.first
filepath = ARGV.last

fi_data = FIDataLoader.parse(filepath)
establishment = Establishments.new(fi_data: fi_data)

if fi_data.any? {|establishment| establishment.zipcode.include?(zip_code)}
	establishment.to_pretty_string(zip_code)
else
	establishment.zipcode_fail_msg
end

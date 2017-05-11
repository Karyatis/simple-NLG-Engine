class Establishments

	attr_reader :fi_data

	def initialize(args={})
		@fi_data = args.fetch(:fi_data, [])
	end

	def city_pass
		num_pass = @fi_data.select { |establishment| establishment.results == "Pass" }
		num_pass.length
	end

	def city_fail
		num_fail = @fi_data.select { |establishment| establishment.results == "Fail" }
		num_fail.length
	end
end
class Establishments

	attr_reader :fi_data

	def initialize(args={})
		@fi_data = args.fetch(:fi_data, [])
	end

	def num_inspections
		@fi_data.length
	end

	def city_pass
		num_pass = @fi_data.select { |establishment| establishment.results == "Pass" }
		num_pass.length
	end

	def city_fail
		num_fail = @fi_data.select { |establishment| establishment.results == "Fail" }
		num_fail.length
	end

	def to_s
		"In March of 2017, there were a total of #{num_inspections} inspections in Chicago. In Chicago as a whole, there were #{city_pass} establishments that passed the inspection, while #{city_fail} failed."
	end
end
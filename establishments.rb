class Establishments

	attr_reader :fi_data

	def initialize(args={})
		@fi_data = args.fetch(:fi_data, [])
	end

	def chi_to_s
		"In March of 2017, there were a total of #{num_inspections} inspections in Chicago. In Chicago as a whole, there were #{city_pass} establishments that passed the inspection, while #{city_fail} failed."
	end

	def zip_to_s(zip_code)
		"In #{zip_code} there were #{zip_pass(zip_code)} establishments that passed the inspection, while #{zip_fail(zip_code)} failed. That is a #{zip_pass_precentage(zip_code)}(%) pass rate"
		 # and a #{zip_fail_percentage(zip_code)(%) fail rate.}"
	end

	private 

	def zipcode_array(zip_code)
		@fi_data.select {|fi_data| fi_data.zipcode == zip_code }
	end

	def zip_pass(zip_code)
		zipcode_array(zip_code).select {|establishment| establishment.results == "Pass" || establishment.results == "Pass w/ Conditions"}.length
	end

	def zip_fail(zip_code)
		zipcode_array(zip_code).select {|establishment| establishment.results == "Fail"}.length
	end

	def zip_pass_precentage(zip_code)
		p zipcode_array(zip_code).length
		zipcode_array(zip_code).length / zip_pass(zip_code) 
	end

	# def zip_fail_percentage(zip_code)
	# 	(zipcode_array(zip_code).length / zip_fail(zip_code)) * 100
	# end

	def num_inspections
		@fi_data.length
	end

	def city_pass
		@fi_data.select {|establishment| establishment.results == "Pass" || establishment.results == "Pass w/ Conditions"}.length
	end

	def city_fail
		@fi_data.select {|establishment| establishment.results == "Fail"}.length
	end
end
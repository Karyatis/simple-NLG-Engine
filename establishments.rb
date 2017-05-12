class Establishments

	attr_reader :fi_data

	def initialize(args={})
		@fi_data = args.fetch(:fi_data, [])
	end

	def to_s(zip_code)
		"In March of 2017, there were a total of #{num_inspections} inspections in Chicago. In Chicago as a whole, there were #{city_pass} establishments that passed the inspection, while #{city_fail} failed. In #{zip_code} there were #{zip_pass(zip_code)} establishments that passed the inspection, while #{zip_fail(zip_code)} failed. That is a #{zip_pass_percentage(zip_code)}(%) pass rate while the failure rate was #{zip_fail_percentage(zip_code)}(%). The city pass rate is #{city_pass_percentage(zip_code)}(%). The three establishments that failed the inspection most recently are #{recent_fails_names}"
	end

	private 

	def array_recent_fails
		array_of_fails = @fi_data.select {|establishment| establishment.results == "Fail"}
		three_recent_fails = []
		i = 0 
			while i < 3
				three_recent_fails << array_of_fails[i]
				i += 1
			end
		three_recent_fails
	end

	def recent_fails_names
		array_names = []
		array_recent_fails.each do |establishment|
			array_names << establishment.name 
		end
		array_names.join(", ")
	end

	def zipcode_array(zip_code)
		@fi_data.select {|fi_data| fi_data.zipcode == zip_code }
	end

	def zip_pass(zip_code)
		zipcode_array(zip_code).select {|establishment| establishment.results == "Pass" || establishment.results == "Pass w/ Conditions"}.length
	end

	def zip_fail(zip_code)
		zipcode_array(zip_code).select {|establishment| establishment.results == "Fail"}.length
	end

	def zip_pass_percentage(zip_code)
		(zip_pass(zip_code).to_f / zipcode_array(zip_code).length.to_f * 100).round(2)
	end

	def zip_fail_percentage(zip_code)
		(zip_fail(zip_code).to_f / zipcode_array(zip_code).length.to_f * 100).round(2)
	end

	def num_inspections
		@fi_data.length
	end

	def city_pass
		@fi_data.select {|establishment| establishment.results == "Pass" || establishment.results == "Pass w/ Conditions"}.length
	end

	def city_fail
		@fi_data.select {|establishment| establishment.results == "Fail"}.length
	end

	def city_pass_percentage(zip_code)
		(city_pass.to_f / @fi_data.length.to_f  * 100).round(2)
	end
end
require_relative 'fi_data'
require_relative 'fi_data_loader'
require_relative 'establishments'

	include FIDataLoader

zip_code = ARGV.first
filepath = ARGV.last

fi_data = FIDataLoader.parse(filepath)
establishments = Establishments.new({fi_data: fi_data})

p establishments.city_pass
p establishments.city_fail



# puts "=================================================
# In March of 2017, there were a total of 1657 inspections in Chicago, of
# which 17 happened in zip code #{zip_code}. In Chicago as a whole, 59.20% of
# inspections were passes, while in #{zip_code} that number was 47.06%."

# The restaurants that failed inspections most recently were: Bespoke
# Men's Grooming, Asian Chopsticks, Inc, and Mago Grill & Cantina. 

# The full text of the violation for Bespoke Men's Grooming is:
# 18. no evidence of rodent or insect outer openings protected/rodent
# proofed, a written log shall be maintained available to the inspectors
# - comments: found no pest control log book on the premises available
# for my review per city code. instructed to have the premises serviced
# by a licensed pest control company who must provide a log book. serious
# violation 7-38-020 | 38. ventilation: rooms and equipment vented as
# required: plumbing: installed and maintained - comments: there is no
# ventilation in the gentlemen's toilet room. must provide mechanical
# ventilation and maintain. | 11. adequate number, convenient,
# accessible, designed, and maintained - comments: found no hand washing
# sink on the premises per city code. instructed to install a hand
# washing sink with hot/cold running water, soap and sanitary hand drying
# devices. critical violation 7-38-030 | 24. dish washing facilities:
# properly designed, constructed, maintained, installed, located and
# operated - comments: found no 3-compartment sink on the premises for
# adequate washing/sanitizing of multi use utensils. instructed to
# provide a 3-compartment sink with drain board and grease trap per city
# code. serious violation 7-38-030"

# ● The total numbers of passes and fails in the city
# ● The numbers of passes and fails in this one zip code
# ● The percentage of inspections that were passes in the chosen zip code, and how that compares
# to the whole city
# ● The names of the three establishments that failed most recently
# ● The full text of the violations column for one of the high risk establishments
# ● Any other information you think we would like to read! Feel free to put your own personal spin
# on the story.
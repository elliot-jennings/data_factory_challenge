####### Program Dependencies ########
require 'json'
require './factory_components/data_mapper'
require './factory_components/data_analyser'

####### My Solution ########
# Set the data.
# Hint: Inspect the data first with prettify. The data is a bunch of hash objects within a single array (this is how most json data will be displayed/formatted).
# Hint: The data includes an annomaly (Disqualified Athlete), so it may be an idea to remove them first?
factory_swimming_data = JSON.parse(File.read('factory_swimming_data.json'))

# Map the data to include unaccumulated splits.
DataMapper.new(factory_swimming_data).call

# Find the DQ Athlete and remove them from the data

factory_swimming_data.each do |athlete|
    if "c_Result" == "DQ  "
      # Ignore data
    end
end

# Find the "Splits_50m" times and sort them. Put the fastest time into the ultimate_swimming_bot.json file.

# Find the "Splits_100m" times by obtaining integers and subtracting the "Splits_50m" times from the "Splits_100m" time and sort them. 
# Put the fastest time into the ultimate_swimming_bot.json file.


factory_swimming_data.each do |athlete|

require '100m_time'
50m = Time.parse('00:00')
100m = Time.parse('10:30')

(100m.to_i - 50m.to_i)
    

# Find the "Splits_150m" times by obtaining integers and subtracting the "Splits_100m" times from the "Splits_150m" time and sort them. 
# Put the fastest time into the ultimate_swimming_bot.json file.

# Find the "Splits_200m" times by obtaining integers and subtracting the "Splits_100m" times from the "c_Result" time and sort them. 
# Put the fastest time into the ultimate_swimming_bot.json file.

def filter_stroke
  Butterfly = ['Defender']

  targets.each do |athlete|
      if defenders.include?(athlete["Position"])
          @successful_candidates << athlete
      else
       # Do nothing
      end
  end
end

# Our Ultimate Swimmiming Bot.
# Hint: The swimming bot is a hash object utilising new syntax, so the keys are symbols not strings like when we handle json data.
# E.g To access swimming bots splits_50m, we would access like so:
# ultimate_swimming_bot[:race_model][:splits_50m]
ultimate_swimming_bot = {
  name: 'Sarah Swimalot',
  gender: 'Female',
  nation: 'AI',
  sport: 'Swimming',
  event: '200m Individual Medley',
  result: 'mm:ss.00',
  race_model: {
    splits_50m: 0,
    splits_100m: 0,
    splits_150m: 0,
    splits_200m: 0
  }
}

# Analyse the data to create a race model for our ultimate swimming bot.
DataAnalyser.new(factory_swimming_data, ultimate_swimming_bot).call

# Save the framework of our ultimate swimmer for our clients.
File.write('ultimate_swimming_bot.json', ultimate_swimming_bot.to_json)

p "#{ultimate_swimming_bot[:name]} v2.12 build complete..."

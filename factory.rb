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

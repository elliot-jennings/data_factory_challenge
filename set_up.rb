# This file loads data from two api endpoints. This has already been run but feel free to re-run it to investigate what is going on here.
require 'json'
require 'open-uri' # Open-Uri is a ruby standard lib that is already included with a ruby install. Hence only just need to require the lib to open the URLs.

# Load Data from S3
data_16 = JSON.load(open('https://s3.eu-west-2.amazonaws.com/sportsdatasolutionsacademy/data/Women200mIndividualMedleyFinal2016.json'))
data_17 = JSON.load(open('https://s3.eu-west-2.amazonaws.com/sportsdatasolutionsacademy/data/Women200mIndividualMedleyFinal2017.json'))

# Merge and set the two data sets into one variable.
factory_swimming_data = data_16 + data_17

File.write('factory_swimming_data.json', factory_swimming_data.to_json)

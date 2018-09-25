require './factory_helpers/time_module'

class DataAnalyser
  extend TimeModule # Note extend instead of include, as we want the module and it's methods as an extention to our class so we can use them withihn the class.

  def initialize(factory_swimming_data, ultimate_swimming_bot)
    @factory_swimming_data = factory_swimming_data
    @ultimate_swimming_bot = ultimate_swimming_bot
  end

  attr_reader :factory_swimming_data, :ultimate_swimming_bot

  def call
    p ultimate_swimming_bot
  end

  private

end

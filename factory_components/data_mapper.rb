require './factory_helpers/time_module'

class DataMapper
  extend TimeModule # Note extend instead of include, as we want the module and it's methods as an extention to our class so we can use them withihn the class.

  def initialize(factory_swimming_data)
    @factory_swimming_data = factory_swimming_data
  end

  attr_reader :factory_swimming_data

  def call
    p factory_swimming_data.first
  end

  private

end

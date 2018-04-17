require_relative 'services/random_form_data'

class GenerateData

  def random_data_generator_selenium
    RandomFormData.new
  end

end

a = GenerateData.new
puts a.random_data_generator_selenium.first_name_data

require 'faker'

class RandomFormData
  include Faker

  def first_name_data
    Name.name
  end

  def second_name_data
    Name.name
  end

  def random_country_data
    Address.country
  end

  def random_phone_number
    num = Number.number(10)
    '0' +num
  end

  def random_email_data
    Internet.email
  end

  def random_password_data
    Internet.password
  end

  def random_text_data
    FamilyGuy.quote
  end

end

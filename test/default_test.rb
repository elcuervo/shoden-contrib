require_relative 'helper'

class Country < Shoden::Model
  include Shoden::Default
  include Shoden::DataTypes

  attribute :name
  attribute :free, Type::Boolean

  default   :name, 'Uruguay'
  default   :free, true
end

test 'default values' do
  country = Country.new(name: 'Argentina', free: false)

  assert_equal country.name,     'Argentina'
  assert_equal Country.new.name, 'Uruguay'

  c1 = country.save
  c2 = Country.new.save

  assert_equal c1.name, 'Argentina'
  assert_equal c2.name, 'Uruguay'

  assert Country[c1.id].name == 'Argentina'
end

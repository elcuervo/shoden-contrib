require 'cutest'
require 'shoden'
require 'shoden/contrib'

class Country < Shoden::Model
  include Shoden::Default

  attribute :name
  default   :name, 'Uruguay'
end

test 'default values' do
  country = Country.new
  assert_equal country.name, 'Uruguay'
end

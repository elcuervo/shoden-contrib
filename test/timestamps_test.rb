require 'cutest'
require 'shoden'
require 'shoden/contrib'

class Trip < Shoden::Model
  include Shoden::Timestamps
end

test 'timestamps' do
  trip = Trip.create

  assert trip.created_at
  assert trip.updated_at
end

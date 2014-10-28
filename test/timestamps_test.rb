require_relative 'helper'

class Trip < Shoden::Model
  include Shoden::Timestamps
end

test 'timestamps' do
  trip = Trip.create

  assert trip.created_at
  assert trip.updated_at
end

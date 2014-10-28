require 'cutest'
require 'shoden'
require 'shoden/contrib'

class Omni < Shoden::Model
  include Shoden::DataTypes

  attribute :integer,   Type::Integer
  attribute :decimal,   Type::Decimal
  attribute :float,     Type::Float
  attribute :symbol,    Type::Symbol
  attribute :time,      Type::Time
  attribute :date,      Type::Date
  attribute :timestamp, Type::Timestamp
  attribute :dict,      Type::Hash
  attribute :array,     Type::Array
  attribute :set,       Type::Set
end

test 'Type::Integer' do
  id = Omni.create(integer: 1).id
  assert_equal Omni[id].integer, 1
end

test 'Type::Float' do
  id = Omni.create(float: 1.0).id
  assert_equal Omni[id].float, 1.0
end

test 'Type::Hash' do
  hash = { a: 1, b: 2, c: 3 }
  omni = Omni.create(dict: hash)

  assert omni.dict.kind_of?(Hash)

  assert Omni[omni.id].dict.kind_of?(Hash)
  assert hash == omni.dict
end

test 'Type::Symbol' do
  omni = Omni.create(symbol: :hi)

  assert omni.symbol.kind_of?(Symbol)

  assert_equal Omni[omni.id].symbol, :hi
end

test 'Type::Time' do
  time = Time.utc(2011, 11, 22, 22, 10, 23)
  omni = Omni.create(time: time)

  assert omni.time.kind_of?(Time)

  assert_equal Omni[omni.id].time, time
end

test 'Type::Date' do
  date = Date.today
  omni = Omni.create(date: date)

  assert omni.date.kind_of?(Date)

  assert_equal Omni[omni.id].date, date
end

test 'Type::Array' do
  array = [1, 2, 3]
  omni = Omni.create(array: array)

  assert omni.array.kind_of?(Array)

  assert_equal Omni[omni.id].array, array
end

test 'Type::Set' do
  set = Set.new([1,2,3])
  omni = Omni.create(set: set)

  assert omni.set.kind_of?(Set)

  assert_equal Omni[omni.id].set, set
end

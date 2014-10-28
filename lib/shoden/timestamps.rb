require_relative 'datatypes'

module Shoden
  module Timestamps
    def self.included(model)
      model.attribute :created_at, DataTypes::Type::Timestamp
      model.attribute :updated_at, DataTypes::Type::Timestamp
    end

    def save
      self.created_at = Time.now.utc.to_i if @_id.nil?
      self.updated_at = Time.now.utc.to_i

      super
    end
  end
end

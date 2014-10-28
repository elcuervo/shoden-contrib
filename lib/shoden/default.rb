module Shoden
  module Default
    def self.included(model)
      model.extend ClassMethods
    end

    module ClassMethods
      def default_attributes
        @default_attributes ||= {}
      end

      def default(name, value)
        default_attributes[name] = value if attributes.include?(name)
      end
    end

    def initialize(*)
      super

      self.class.default_attributes.each do |k,v|
        self.send("#{k}=", v) if !self.send(k)
      end
    end
  end
end

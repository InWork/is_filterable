module IsFilterable
  module Filterable
    def self.included(base)
      base.extend(ClassMethods)
    end


    module ClassMethods
      def is_filterable args = {}
        include Filterable::IsFilterable::InstanceMethods
        extend Filterable::IsFilterable::SingletonMethods
      end
    end


    module SingletonMethods
      def search attribute, search
        if search
          where "#{attribute} LIKE ?", "%#{search}%"
        else
          scoped
        end
      end
    end


    module InstanceMethods
    end

  end
end

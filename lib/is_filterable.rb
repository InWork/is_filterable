require 'rails'
require "is_filterable/version"
require "is_filterable/is_filterable"

module IsFilterable
  class Engine < ::Rails::Engine
  end
end

ActiveRecord::Base.send(:include, IsFilterable::Filterable)

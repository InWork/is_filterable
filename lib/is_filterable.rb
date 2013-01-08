require 'rails'
require "is_filterable/version"

module IsFilterable
  class Engine < ::Rails::Engine
  end
end

ActiveRecord::Base.send(:include, IsFilterable::Filterable)

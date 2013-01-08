# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "is_filterable/version"

Gem::Specification.new do |s|
  s.name        = "is_filterable"
  s.version     = IsFilterable::VERSION
  s.authors     = ["Lucien Stuker","Philip Kurmann"]
  s.email       = ["lucien.stuker@inwork.ch","philip.kurmann@inwork.ch"]
  s.homepage    = "https://github.com/InWork/is_filterable"
  s.summary     = %q{Simple AJAX filter to filter/search results a ActiveRecord Model}
  s.description = %q{This Gem implements the option to filter/search in a ActiveRecord model by a search pattern}

  s.rubyforge_project = "is_filterable"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_dependency "jquery-rails"
end

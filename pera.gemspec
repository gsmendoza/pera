# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pera/version"

Gem::Specification.new do |s|
  s.name        = "pera"
  s.version     = Pera::VERSION
  s.authors     = ["George Mendoza"]
  s.email       = ["gsmendoza@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "pera"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "thor"

  s.add_development_dependency "coderay"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "rspec"
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby-hamljs/version"

Gem::Specification.new do |s|
  s.name        = "ruby-hamljs"
  s.version     = Hamljs::VERSION
  s.authors     = ["Steel Fu"]
  s.email       = ["steelfu@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{HamlJS processing using TiltHaml Template instead of ExecJS and Haml.js}
  s.description = %q{HamlJS processing using TiltHaml Template instead of ExecJS and Haml.js}

  s.rubyforge_project = "ruby-hamljs"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "tilt"
end

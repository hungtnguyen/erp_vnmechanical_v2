$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "erp/vnmechanical/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "erp_vnmechanical"
  s.version     = Erp::Vnmechanical::VERSION
  s.authors     = ["Ton Hung Nguyen"]
  s.email       = ["tonhungstar@gmail.com"]
  s.homepage    = "http://vnmechanical.com"
  s.summary     = "Website VNM - Vu Van Tri"
  s.description = "Website VNM - Vu Van Tri"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "erp_core"
  s.add_dependency "deface"
end

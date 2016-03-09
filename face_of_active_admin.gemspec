$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "face_of_active_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "face_of_active_admin"
  s.version     = FaceOfActiveAdmin::VERSION
  s.authors     = ["Kvokka, Isaac Norman, Wojtek Krysiak, Patryk Zabielski"]
  s.email       = ["root_p@mail.ru"]
  s.homepage    = "http://github.com/kvokka/face_of_active_admin"
  s.summary     = "Best face for Active Admin. Smooth ans flexible"
  s.description = "Smooth Active Admin interface"
  s.license     = "MIT"

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile"]
  s.require_paths = ["lib"]
  
  s.add_dependency "rails",  ">= 3.2.0"
  s.add_dependency "font-awesome-sass",  ">= 4.5.0"


end

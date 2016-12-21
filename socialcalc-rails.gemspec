$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "socialcalc/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "socialcalc-rails"
  s.version     = Socialcalc::Rails::VERSION
  s.authors     = ["Eiji Sakai"]
  s.email       = ["eijisakai@gmail.com"]
  s.homepage    = "https://github.com/elm200/socialcalc-rails"
  s.summary     = "Socialcalc for Rails."
  s.description = "Allows you to use Socialcalc, a JavaScript-based spreadsheet, on Ruby on Rails web applications."
  s.license     = "MIT"

  s.files = Dir["{lib,vendor,public}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.require_path = 'lib'

  # s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  # s.add_development_dependency "sqlite3"
end

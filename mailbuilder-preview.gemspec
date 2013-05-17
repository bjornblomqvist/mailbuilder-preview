$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mailbuilder-preview/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mailbuilder-preview"
  s.version     = MailbuilderPreview::VERSION
  s.authors     = ["Darwin"]
  s.email       = ["darwin@bits2life.com"]
  s.homepage    = "http://github.com/bjornblomqvist/mailbuilder-preview/"
  s.summary     = "I nice helper when setting the styling for an email."
  s.description = "I nice helper when setting the styling for an email."
  s.licenses = ["LGPL3"]

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.0"
  s.add_dependency "mailbuilder", "~> 0.2.0"

  s.add_development_dependency "sqlite3"
end

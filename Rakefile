# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'
require_relative "./lib/mailbuilder-preview/version"

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "mailbuilder-preview"
  gem.homepage = "http://github.com/bjornblomqvist/mailbuilder-preview/"
  gem.license = "LGPL3"
  gem.summary = %Q{A nice helper when setting the styling for an email.}
  gem.description = %Q{A nice helper when setting the styling for an email.}
  gem.email = "darwin.git@marianna.se"
  gem.authors = ["Darwin"]
  gem.version = MailbuilderPreview::VERSION
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test
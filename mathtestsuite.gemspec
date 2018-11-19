Gem::Specification.new do |s|
  s.name        = 'mathtestsuite'
  s.version     = '1.0.1'
  s.date        = '2018-11-12'

  s.summary     = 'Math_test_suite'
  s.description = 'This gem will help you to test math exercises from Abramov book'

  s.authors     = ["westnick2"]
  s.email       = ["vmetw@ukr.net"]

  s.files       = ["lib/quality_assurance.rb"]
  s.homepage    = 'https://github.com/westnick2/mathtestsuite'
  s.license     = 'GPL-2.0'

  s.require_paths = ['lib']

  s.add_development_dependency 'colorize', '~> 0.8.1'
  s.add_development_dependency "bundler", "~> 1.17"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"

  s.files = ['LICENSE.txt', 'README.md', 'mathtestsuite.gemspec', 'lib/mathtestsuite.rb']
end

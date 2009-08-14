# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{billboard}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wynn Netherland"]
  s.date = %q{2009-08-13}
  s.description = %q{Great for cheating at trivia games}
  s.email = %q{wynn@squeejee.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    "History",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION.yml",
     "lib/billboard.rb",
     "lib/billboard/client.rb",
     "test/billboard/client_test.rb",
     "test/fixtures/album_charts.json",
     "test/fixtures/artist_search_with_date_range.json",
     "test/fixtures/chart.json",
     "test/fixtures/song_search.json",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/pengwynn/billboard}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{billboard}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Ruby wrapper for the Billboard charts API}
  s.test_files = [
    "test/billboard/client_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mash>, ["= 0.0.3"])
      s.add_runtime_dependency(%q<httparty>, ["= 0.4.3"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_development_dependency(%q<jeremymcanally-matchy>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<mash>, [">= 0"])
    else
      s.add_dependency(%q<mash>, ["= 0.0.3"])
      s.add_dependency(%q<httparty>, ["= 0.4.3"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<jeremymcanally-matchy>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<mash>, [">= 0"])
    end
  else
    s.add_dependency(%q<mash>, ["= 0.0.3"])
    s.add_dependency(%q<httparty>, ["= 0.4.3"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<jeremymcanally-matchy>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<mash>, [">= 0"])
  end
end

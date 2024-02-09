# frozen_string_literal: true

require File.expand_path('lib/t/event_notifier/version', __dir__)

Gem::Specification.new do |spec|
  spec.name = 't-event_notifier'
  spec.version = GL::Command::VERSION
  spec.authors = ['Tim Lawrenz']
  spec.summary = 'Central Place to distribute events'
  spec.homepage = 'https://github.com/timlawrenz/t-event_notifier'
  spec.license = 'Apache'
  spec.platform = Gem::Platform::RUBY

  spec.required_ruby_version = '>= 3.1.4'
  spec.extra_rdoc_files = ['README.md']
  spec.files =
    Dir[
      'README.md',
      'LICENSE',
      'CHANGELOG.md',
      'lib/**/*.rb',
      'lib/**/*.erb',
      'lib/**/*.rake',
      't-event_notifier.gemspec',
      '.github/*.md',
      'Gemfile',
      'Rakefile'
    ]
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 7.1.3'
  spec.add_dependency 'activesupport', '>= 7.1.3'
  spec.add_dependency 'railties', '>= 7.1.3'

  spec.metadata['rubygems_mfa_required'] = 'true'
end

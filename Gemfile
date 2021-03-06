# frozen_string_literal: true
# Pull gem index from rubygems
source 'https://rubygems.org'

# Pin the version of bundle we support
gem 'bundler', File.read(File.join(__dir__, '.bundler-version')).strip

# Dependencies for connectors
gem 'activesupport', '5.2.6'
gem 'bson', '~> 4.2.2'
gem 'mime-types', '= 3.1'
gem 'tzinfo-data', '= 1.2022.1'
gem 'concurrent-ruby'

group :test do
  gem 'rspec-collection_matchers', '~> 1.2.0'
  gem 'rspec-core', '~> 3.10.1'
  gem 'rspec_junit_formatter'
  gem 'rubocop', '1.18.4'
  gem 'rubocop-performance', '1.11.5'
  gem 'rspec-mocks'
  gem 'webmock'
  gem 'rack-test'
  gem 'ruby-debug-ide'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'debase', '0.2.5.beta2'
  gem 'timecop'
  gem 'simplecov', require: false
  gem 'simplecov-material'
end

# Dependencies for the HTTP service
gem 'sinatra'
gem 'sinatra-contrib'
gem 'rack'
gem 'forwardable'
gem 'faraday'
gem 'httpclient'
gem 'attr_extras'
gem 'hashie'
gem 'puma'

# Dependencies for oauth
gem 'signet', '~> 0.16.0'

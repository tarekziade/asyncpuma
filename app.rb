#
# Copyright Elasticsearch B.V. and/or licensed to Elasticsearch B.V. under one
# or more contributor license agreements. Licensed under the Elastic License;
# you may not use this file except in compliance with the Elastic License.
#

# frozen_string_literal: true

require 'active_support/inflector'
require 'faraday'
require 'hashie'
require 'json'

require 'sinatra'
require 'sinatra/config_file'
require 'sinatra/json'

Dir[File.join(__dir__, 'initializers/**/*.rb')].sort.each { |f| require f }



# Sinatra app
class ConnectorsWebApp < Sinatra::Base
  register Sinatra::ConfigFile
  config_file File.join(__dir__, 'config.yml')

  configure do
    set :raise_errors, false
    set :show_exceptions, false
    set :bind, settings.http['host']
    set :port, settings.http['port']
    set :results, {}
  end

  get '/start' do
    job_id = SecureRandom.uuid

    Thread.new {
      puts("Running #{job_id} in a thread")
      settings.results[job_id] = {'status': "Not ready"}
      sleep 30
      settings.results[job_id] = {'status': 'finished', 'result': "Result for #{job_id}"}
    }

    json(
      :job_id => job_id,
      :result_url => "http://localhost:9292/result/#{job_id}"
    )
  end

  get '/result/:job_id' do
    json(settings.results[params[:job_id]])
  end
end

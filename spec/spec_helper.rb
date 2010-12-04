require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'rspec'
require 'rack/test'
require File.join(File.dirname(__FILE__), '..', 'sinatrinha')

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

RSpec::configure do |conf|
  conf.include Rack::Test::Methods
end

def app
  @app ||= Sinatrinha.new
end

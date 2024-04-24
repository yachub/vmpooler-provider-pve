# frozen_string_literal: true

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end
require 'helpers'
require 'rspec'
require 'vmpooler'
require 'redis'
require 'vmpooler/metrics'

def project_root_dir
  File.dirname(File.dirname(__FILE__))
end

def fixtures_dir
  File.join(project_root_dir, 'spec', 'fixtures')
end
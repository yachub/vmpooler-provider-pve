require 'spec_helper'
require 'mock_redis'
require 'vmpooler/providers/pve'

RSpec::Matchers.define :relocation_spec_with_host do |value|
  match { |actual| actual[:spec].host == value }
end

describe 'Vmpooler::PoolManager::Provider::Pve' do

end

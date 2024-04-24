require 'rspec'

describe 'VmpoolerProviderPve' do
  context 'when creating class ' do
    it 'sets a version' do
      expect(VmpoolerProviderPve::VERSION).not_to be_nil
    end
  end
end
require 'spec_helper'

describe Despite do
  it 'has a version number' do
    expect(Despite::VERSION).not_to be nil
  end
end

describe '.despite' do
  let(:method_name) { 'despite' }
  it_behaves_like 'flow control operator'

  context 'when condition is false' do
    it 'raises error' do
      expect do
        despite 2 > 3 do
          puts 'Hello, Despite!'
        end
      end.to raise_error DespiteAssertionError
    end
  end
end

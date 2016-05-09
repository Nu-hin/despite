describe Despite do
  it 'has a version number' do
    expect(Despite::VERSION).not_to be_nil
  end

  describe '.despite' do
    let(:method_name) { 'despite' }

    context 'when condition is true' do
      let(:condition) { true }
      it_behaves_like('flow control operator')
    end

    context 'when condition is false' do
      let(:condition) { false }

      it 'raises error' do
        expect do
          despite condition do
            puts 'Hello, Despite!'
          end
        end.to raise_error Despite::AssertionError
      end
    end
  end

  describe '.even_if' do
    let(:method_name) { 'even_if' }

    context 'when condition is true' do
      let(:condition) { true }
      it_behaves_like('flow control operator')
    end

    context 'when condition is false' do
      let(:condition) { false }
      it_behaves_like('flow control operator')
    end
  end
end

describe '.even_if' do
  let(:method_name) { 'even_if' }
  it_behaves_like('flow control operator')

  context 'when condition is false' do
    let(:condition) { false }
    it_behaves_like('flow control operator')
  end
end

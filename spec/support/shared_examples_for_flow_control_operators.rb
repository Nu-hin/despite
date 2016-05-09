shared_examples 'flow control operator' do
  def method(expr, &block)
    send(method_name, expr, &block)
  end

  it 'executes the block' do
    x = 0

    method condition do
      x = 1
    end

    expect(x).to eq(1)
  end

  it 'returns the block result' do
    x = method condition do
      1
    end

    expect(x).to eq(1)
  end

  context 'without a block' do
    it 'returns expression' do
      x = method Object.new
      expect(x).to be_a(Object)
    end
  end
end

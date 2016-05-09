describe Object do
  it 'has #despite method' do
    expect(self).to respond_to(:despite)
  end

  it 'has #even_if method' do
    expect(self).to respond_to(:even_if)
  end
end

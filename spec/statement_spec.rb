require 'statement'

describe Statement do
  describe 'initialization' do
    it 'will not contain any transactions' do
      expect(subject.transactions).to eq []
    end
  end

end

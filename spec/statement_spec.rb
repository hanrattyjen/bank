require 'statement'

describe Statement do

  subject(:statement) { described_class.new }

  describe 'initialization' do
    it 'will not contain any transactions' do
      expect(subject.transactions).to eq []
    end
  end

  describe '#credit_transaction' do
    it 'will add a transaction onto the statement' do

    end
  end

end

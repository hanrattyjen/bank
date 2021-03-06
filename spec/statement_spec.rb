require 'statement'

describe Statement do

  subject(:statement) { described_class.new }
  let(:account) { double(:balance, :date => "29/11/2016") }

  describe 'initialization' do
    it 'will not contain any transactions' do
      expect(subject.transactions).to eq []
    end
  end

  describe '#credit_transaction' do
    it 'will add a credit transaction onto the statement' do
      expect(subject.credit_transaction(10, 60)).to eq [["29/11/2016", "0.00", "10.00", "60.00"]]
    end
  end

  describe '#debit transaction' do
    it 'will add a debit transaction onto the statement' do
      expect(subject.debit_transaction(10, 40)).to eq [["29/11/2016", "10.00", "0.00", "40.00"]]
    end
  end

    describe 'multiple transactions' do
      it 'will show 2 transactions' do
      subject.credit_transaction(10, 40)
      expect(subject.credit_transaction(10, 50)).to eq [["29/11/2016", "0.00", "10.00", "40.00"], ["29/11/2016", "0.00", "10.00", "50.00"]]
    end
  end

end

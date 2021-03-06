require 'account'

describe Account do
  subject(:account) {described_class.new}
  let(:statement) { double(:statement) }

  describe 'initialization' do
    it 'should have a starting balance of zero' do
      expect(subject.balance).to eq 0
    end
  end

  context 'viewing balance' do
    it 'allows customer to view their balance at any time' do
      subject.deposit(20)
      subject.withdraw(5)
      expect(subject.balance).to eq 15
    end
  end

  context 'deposit money' do
    it 'allows customer to deposit money into their account' do
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end
  end

  context 'withdraw money' do
    it 'allows customer to withdraw money from their account' do
      subject.deposit(20)
      subject.withdraw(10)
      expect(subject.balance).to eq 10
    end

    it 'will raise an error if balance is less than money going out' do
      subject.deposit(20)
      expect{subject.withdraw(25).to raise_error "Cannot withdraw. You have no money fool!" }
    end
  end

  context 'printing a statement' do
    it 'will print out a statement for a user' do
      subject.deposit(20)
      expect(subject.print_statement).to eq "29/11/2016   || 0.00   || 20.00   || 20.00"
    end
  end


end

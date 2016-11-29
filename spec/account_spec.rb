require 'account'

describe Account do
  it { is_expected.to respond_to :balance }

  it 'should have a starting balance of 0' do
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    it 'should allow a customer to deposit money' do
      expect(subject.deposit(10)).to eq 10
    end
  end

  describe '#withdraw' do
    it 'should allow a customer to withdraw money' do
      subject.deposit(10)
      expect(subject.withdraw(10)).to eq 0
    end
  end
end

require 'account'

describe Account do
  it { is_expected.to respond_to :balance }

  it 'should have a starting balance of 0' do
    expect(subject.balance).to eq 0
  end
end

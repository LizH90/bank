require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }

  before(:each) do
    subject.deposit(100)
  end

  it 'initializes with an empty array' do
    expect(subject.all_transactions).to eq([])
  end

  it 'increases the balance when you deposit a sum' do

    expect(subject.balance).to eq 100
  end

  it 'decreases the balance when you withdraw' do
    subject.withdraw(50)
    expect(subject.balance).to eq 50
  end

  it 'throws and error if you withdraw more than the balance' do
    expect { subject.withdraw(110) }.to raise_error 'Insufficient funds'
  end

end

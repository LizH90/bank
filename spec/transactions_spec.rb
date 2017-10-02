require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }

  it 'initializes with an empty array' do
    expect(subject.all_transactions).to eq([])
  end

  it 'increases the balance when you deposit a sum' do
    subject.deposit(100)
    expect(subject.balance).to eq (100)
  end

end

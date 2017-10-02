require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }
  let(:account) { Account.new }

  it 'initializes with an empty array' do
    expect(subject.all_transactions).to eq([])
  end

  describe 'when the balance is topped up' do

    before do
      subject.deposit('01,10,2017', 100)
    end

    it 'increases the balance when you deposit a sum' do
      expect(subject.account.balance).to eq 100
    end

    it 'adds deposit to all transactions array' do
      expect(subject.all_transactions[0]).to eq(["01,10,2017", "credit", 100, 100])
    end

  end

  describe 'withdrawal' do
    before do
      subject.deposit('01,10,2017', 100)
      subject.withdraw("03/10/2017", 50)
    end

    it 'decreases the balance when you withdraw' do
      expect(subject.account.balance).to eq 50
    end

    it 'throws and error if you withdraw more than the balance' do
      expect { subject.withdraw("03/10/2017", 60) }.to raise_error 'Insufficient funds'
    end

    it 'adds withdrawals to all transactions array' do
      expect(subject.all_transactions[1]).to eq(["03/10/2017", "debit", 50, 50])
    end
  end

end

require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'Initializes with a default balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe 'When depositing funds' do

    before do
      subject.deposit("10/01/2012", 1000)
    end

    it 'Updates the balance when depositing funds' do
      expect(subject.balance).to eq(1000)
    end

    it 'Adds a new transaction to transactions array' do
      expect(subject.transactions[0].amount).to eq(1000)
    end

    describe 'When withdrawing funds' do

      before do
        subject.withdraw("14/01/2012", 500)
      end

      it 'Updates the balance when withdrawing funds' do
        expect(subject.balance).to eq(500)
      end

      it 'Adds a new transaction to transactions array' do
        expect(subject.transactions[1].amount).to eq(500)
      end

      it 'Throws and error if you withdraw more than the balance' do
        expect { subject.withdraw("15/01/2012", 600) }.to raise_error 'Insufficient funds'
      end
    end

  end
end

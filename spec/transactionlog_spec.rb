require 'transactionlog'

describe TransactionLog do
  subject(:transactions) { described_class.new("14/01/2012", "credit", "1000", "1000") }

  it 'Initializes with a date, type, amount and balance' do
    expect(subject.date).to eq("14/01/2012")
    expect(subject.type).to eq("credit")
    expect(subject.amount).to eq("1000")
    expect(subject.balance).to eq("1000")
  end

end

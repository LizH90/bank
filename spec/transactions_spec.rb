require 'transactions'

describe Transactions do
  subject(:transactions) { described_class.new }

  it 'initializes with an empty array' do
    expect(subject.all_transactions).to eq([])
  end

end

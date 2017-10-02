require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'initializes with a default balance of zero' do
    expect(subject.balance).to eq(0)
  end
end

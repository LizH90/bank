require 'print'

describe Print do
  subject(:print) { described_class.new([["12/10/2017", "credit", 100, 100],["15/10/2017", "debit", 50, 50]]) }

  it 'has print balance method' do
    expect(subject.print_balance).to include("date || credit || debit || balance")
  end

  it 'credits are put in the correct column' do
    expect(subject.print_balance).to include("12/10/2017 || 100.00 || || 100.00")
  end

  it 'debits are put in the correct column' do
    expect(subject.print_balance).to include("15/10/2017 || || 50.00 || 50.00")
  end

end

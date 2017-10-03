require 'printer'

describe Printer do
  subject(:printer) { described_class.new([["12/10/2017", "credit", 100, 100], ["15/10/2017", "debit", 50, 50]]) }

  before(:each) do
    subject.format_numbers
    subject.format_statement
  end

  it 'credits are put in the correct column' do
    expect(subject.balance_statement).to include("12/10/2017 || 100.00 || || 100.00")
  end

  it 'debits are put in the correct column' do
    expect(subject.balance_statement).to include("15/10/2017 || || 50.00 || 50.00")
  end

  it 'has print balance method' do
    expect { subject.print_statement }.to output.to_stdout
  end

end

require 'account'
require 'transactionlog'
require 'printer'

RSpec.feature "Acceptance test" do
  let(:account) { Account.new }
  let(:transactionlog) { TransactionLog.new }
  let(:printer) { Printer.new }

  it 'runs acceptance test' do
    account.deposit("10/01/2012", 1000)
    account.deposit("13/01/2012", 2000)
    account.withdraw("14/01/2012", 500)
    expect(account.print_statement).to eq(
    [["14/01/2012", "debit", "500.00", "2500.00"],
    ["13/01/2012", "credit", "2000.00", "3000.00"],
    ["10/01/2012", "credit", "1000.00", "1000.00"]]
    )
  end
end

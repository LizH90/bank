require './lib/account.rb'
require './lib/transactionlog.rb'
require './lib/printer.rb'

account = Account.new

account.deposit("10/01/2012", 1000)

account.deposit("13/01/2012", 2000)

account.withdraw("14/01/2012", 500)

account.print_statement

# p account.printer.transactions

require './lib/account.rb'
require './lib/transactions.rb'
require './lib/print.rb'

transactions = Transactions.new

account = Account.new

p account.balance

transactions.deposit("12/10/2017", 100)

p transactions.account.balance

p account.balance

transactions.withdraw("15/10/2017", 50)

p account.balance

print = Print.new(transactions.all_transactions)

p print.format_statement

p print.print_balance

p print.balance_statement

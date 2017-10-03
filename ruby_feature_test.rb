require './lib/account.rb'
require './lib/transactions.rb'
require './lib/print.rb'

transactions = Transactions.new

transactions.deposit("12/10/2017", 100)

transactions.withdraw("15/10/2017", 50)

print = Print.new(transactions.all_transactions)

print.number_format

p print.format_trans

print.format_statement

print.number_format

p print.all_transactions

p print.print_balance

require './lib/account.rb'
require './lib/transactions.rb'
require './lib/printer.rb'

transactions = Transactions.new

transactions.deposit("12/10/2017", 100)

transactions.withdraw("15/10/2017", 50)

printer = Printer.new(transactions.all_transactions)

printer.format_numbers

printer.format_statement

printer.format_numbers

p printer.all_transactions

p printer.print_statement

require './lib/transactions.rb'

transactions = Transactions.new

transactions.deposit("12/10/2016", 100)

p transactions.all_transactions

transactions.withdraw(50)

p transactions.all_transactions[0]

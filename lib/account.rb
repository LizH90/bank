require_relative 'transactionlog'
require_relative 'printer'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(date, amount)
    @balance += amount
    @transactions << TransactionLog.new(date, "credit", amount, @balance)
  end

  def withdraw(date, amount)
    raise 'Insufficient funds' if amount > @balance
    @balance -= amount
    @transactions << TransactionLog.new(date, "debit", amount, @balance)
  end

  def print_statement
    printer = Printer.new(@transactions)
    printer.full_statement
  end

end

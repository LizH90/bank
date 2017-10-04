require './lib/transactionlog.rb'

class Printer

  attr_reader :transactions, :balance_statement

  def initialize(transactions)
    @balance_statement = ""
    @transactions = transactions
  end

  def format_numbers
    @transactions = transactions.map do |transactions|
      format(transactions)

    end
  end

  def format_statement
    @transactions.reverse.each do |date, type, amount, balance|
      if type == "credit"
        puts "#{date} || #{amount} || || #{balance}\n"
      else
        puts "#{date} || || #{amount} || #{balance}\n"
      end
    end
  end

  def full_statement
    puts "date || credit || debit || balance\n"
    format_numbers
    format_statement
  end

  def format(transactions)
    [transactions.date, transactions.type,
    "%.2f" % transactions.amount, "%.2f" % transactions.balance]
  end
end

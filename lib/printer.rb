class Printer

  attr_reader :all_transactions, :balance_statement

  def initialize(all_transactions)
    @all_transactions = all_transactions
    @balance_statement = ""
  end

  def format_numbers
    @all_transactions = @all_transactions.map do |date, type, amount, balance|
      [date, type, "%.2f" % amount, "%.2f" % balance]
    end
  end

  def format_statement
    @all_transactions.each do |date, type, amount, balance|
      if type == "credit"
        @balance_statement += "#{date} || #{amount} || || #{balance}\n"
      else
        @balance_statement += " #{date} || || #{amount} || #{balance}\n"
      end
    end
  end

  def print_statement
    puts "date || credit || debit || balance\n"
    puts @balance_statement
  end

end

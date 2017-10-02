class Print

  attr_reader :all_transactions, :balance_statement

  def initialize(all_transactions)
    @all_transactions = all_transactions
    @balance_statement = ""
  end

  def format_statement
    @all_transactions.each do |date, type, amount, balance|
      if type == "credit"
        @balance_statement += "#{date} || #{"%.2f" % amount} || || #{"%.2f" % balance}\n"
      else
        @balance_statement += " #{date} || || #{"%.2f" % amount} || #{"%.2f" % balance}\n"
      end
    end
  end

  def print_balance
    puts "date || credit || debit || balance\n"
    puts @balance_statement
  end

end

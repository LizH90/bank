class Print

  attr_reader :all_transactions

  def initialize(all_transactions)
    @all_transactions = all_transactions
  end

  def print_balance
    string = "date || credit || debit || balance"
    balance_statement = @all_transactions.each do |date,type,amount,balance|
      if type == "credit"
        string += " #{date} || #{"%.2f" %amount} || || #{"%.2f" %balance}"
      else
        string += " #{date} || || #{"%.2f" %amount} || #{"%.2f" %balance}"
      end
    end
    string
  end
end

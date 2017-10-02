class Transactions

  attr_reader :all_transactions, :balance

  def initialize
    @all_transactions = []
    @balance = 0
  end

  def deposit(date, amount)
    @balance += amount
    @all_transactions << [date, "credit", amount, @balance]
  end

  def withdraw(date, amount)
    raise 'Insufficient funds' if amount > @balance
    @balance -= amount
    @all_transactions << [date, "debit", amount, @balance]
  end
end

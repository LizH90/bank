class Transactions

  attr_reader :all_transactions, :balance

  def initialize(balance = nil)
    @all_transactions = []
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end
end

class Transactions

  attr_reader :all_transactions, :account

  def initialize
    @all_transactions = []
    @account = Account.new
  end

  def deposit(date, amount)
    @account.balance += amount
    @all_transactions << [date, "credit", amount, @account.balance]
  end

  def withdraw(date, amount)
    raise 'Insufficient funds' if amount > @account.balance
    @account.balance -= amount
    @all_transactions << [date, "debit", amount, @account.balance]
  end

end

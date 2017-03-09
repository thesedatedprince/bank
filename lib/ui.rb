class Ui
  attr_reader :account


  def initialize(account = Account.new)
    @account = account
  end

  def withdraw(amount)
    @account.debit(amount)
  end

  def deposit(amount)
    @account.credit(amount)
  end

  def print_balance
    @account.history
  end
end

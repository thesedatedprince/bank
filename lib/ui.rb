class Ui
  attr_reader :account


  def initialize(account = Account.new)
    @account = account
  end

  def withdraw(amount)
    @account.subtract(amount)
  end
end

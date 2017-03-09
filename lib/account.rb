class Account
  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = {}
  end

  def subtract(amount)
    @balance -= amount
  end

  def add(amount)
    @balance += amount
    save(__method__.to_s, amount)
  end

  def save(type, amount)
    @transactions[Time.now.strftime("%d/%m/%Y")] = [type, amount]
  end
end

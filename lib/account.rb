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
    if @transactions.key?(Time.now.strftime("%d/%m/%Y").to_s)
      @transactions[Time.now.strftime("%d/%m/%Y")].push [type, amount]
    else
      @transactions[Time.now.strftime("%d/%m/%Y")] = []
      @transactions[Time.now.strftime("%d/%m/%Y")].push [type, amount]
    end
  end

end

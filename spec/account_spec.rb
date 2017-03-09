require 'account.rb'

describe 'current_account' do

  describe '#subtract' do
    it 'subtracts from current balance' do
      account = Account.new(1000)
      account.debit(200)
      expect(account.balance).to eq 800
    end
  end

  describe '#add' do
    it 'adds to current balance' do
      account = Account.new(1000)
      account.credit(200)
      expect(account.balance).to eq 1200
    end

    it 'sends it\'s method name to save' do
      account = Account.new
      account.credit(200)
      expect(account.transactions).to eq ({Time.now.strftime("%d/%m/%Y") => [['credit', 200]]})
    end
  end

  describe '#save' do
    it 'saves the transaction' do
      account = Account.new(1000)
      expect(account.save('credit', 200)).to eq [['credit', 200]]
    end

    it 'should save multiple transactions' do
      account = Account.new
      account.credit(200)
      account.credit(400)
      expect(account.transactions).to eq ({Time.now.strftime("%d/%m/%Y") => [['credit', 200], ['credit', 400]]})
    end
  end

end

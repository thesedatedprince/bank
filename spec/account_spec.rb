require 'account.rb'

describe 'current_account' do

  describe '#subtract' do
    it 'subtracts from current balance' do
      account = Account.new(1000)
      account.subtract(200)
      expect(account.balance).to eq 800
    end
  end

  describe '#add' do
    it 'adds to current balance' do
      account = Account.new(1000)
      account.add(200)
      expect(account.balance).to eq 1200
    end

    it 'sends it\'s method name to save' do
      account = Account.new
      account.add(200)
      expect(account.transactions).to eq ({Time.now.strftime("%d/%m/%Y") => [['add', 200]]})
    end
  end

  describe '#save' do
    it 'saves the transaction' do
      account = Account.new(1000)
      expect(account.save('add', 200)).to eq [['add', 200]]
    end

    it 'should save multiple transactions' do
      account = Account.new
      account.add(200)
      account.add(400)
      expect(account.transactions).to eq ({Time.now.strftime("%d/%m/%Y") => [['add', 200], ['add', 400]]})
    end
  end

end

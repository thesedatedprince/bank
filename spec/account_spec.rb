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
  end
end

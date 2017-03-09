require 'account.rb'

describe 'current_account' do
  describe '#subtract' do
    it 'subtracts from the current account' do
      account = Account.new(500)
      account.subtract(200)
      expect(account.balance).to eq 300
    end
  end

  describe '#add' do
    it 'adds to the current account' do
      account = Account.new
      account.add(200)
      expect(account.balance).to eq 200
    end
  end
end

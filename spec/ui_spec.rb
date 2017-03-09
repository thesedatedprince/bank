require 'ui.rb'

describe '#ui' do
  describe '#withdraw' do
    it "allows user to withdraw from balance" do
      ui = Ui.new(Account.new(1000))
      ui.withdraw(500)
      expect(ui.account.balance).to eq 500
    end
  end

  describe '#deposit' do
    it "allows user to deposit to balance" do
      ui = Ui.new
      ui.deposit(200)
      expect(ui.account.balance).to eq 200
    end
  end
end

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

  describe '#print' do
    it 'allows user to print balance history to screen' do
      ui = Ui.new(Account.new(500))
      ui.deposit(200)
      expect(ui.print_balance).to eq "#{Time.now.strftime('%d/%m/%Y')} credit 200 balance 700"
    end
  end
end

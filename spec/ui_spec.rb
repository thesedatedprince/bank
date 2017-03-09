require 'ui.rb'

describe '#withdraw' do
  it "allows user to withdraw from balance" do
    ui = Ui.new(Account.new(1000))
    ui.withdraw(500)
    expect(ui.account.balance).to eq 500
  end
end

require 'account'

describe Account do

describe '#initialize' do
  it 'initializes with a balance of 0' do
    Account.new
    expect(subject.balance).to eq 0
  end
end

describe '#add_money' do
  it 'responds to add_money' do
    Account.new
    expect(subject).to respond_to(:add_money)
  end
end

describe '#withdraw_money' do
  it 'responds to withdraw_money' do
    Account.new
    subject.add_money(10)
    subject.withdraw_money(3)
    expect(subject.show_balance).to eq 7
  end
end

describe '#show_balance' do
  it 'should show current balance on account' do
    Account.new
    subject.add_money(10)
    expect(subject.show_balance).to eq 10
  end
 end
end

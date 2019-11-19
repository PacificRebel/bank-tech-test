# frozen_string_literal: true

require 'account'

describe Account do
  describe '#initialize' do
    it 'initializes with a balance of 0' do
      Account.new
      expect(subject.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'responds to deposit' do
      Account.new
      subject.deposit(10)
      expect(subject.show_balance).to eq '10.00'
    end
  end

  describe '#withdraw' do
    it 'responds to withdraw' do
      Account.new
      subject.deposit(10)
      subject.withdraw(3)
      expect(subject.show_balance).to eq '7.00'
    end
  end

  # edge case: test for someone withdrawing more than they have

  describe '#show_balance' do
    it 'should show current balance on account' do
      Account.new
      subject.deposit(10)
      expect(subject.show_balance).to eq '10.00'
    end
  end

  describe '#print statement' do
    it 'should print the date, and value of one deposit and withdrawal in correct format' do
      Account.new
      subject.deposit(10)
      subject.withdraw(3)
      expect(subject.print_statement)
        .to eq "date || credit || debit || balance \n 19/11/2019 || 10.00 || 3.00 || 7.00"
    end

    describe '#print statement' do
      it 'should print the date, and value of one deposit without withdrawal in correct format' do
        Account.new
        subject.deposit(10)
        expect(subject.print_statement)
          .to eq "date || credit || debit || balance \n 19/11/2019 || 10.00 ||  || 10.00"
      end
    end

  #   it 'should print transactions in reverse chronological order' do
  #     Account.new
  #     subject.deposit(10)
  #     subject.withdraw(3)
  #     expect(subject.print_statement)
  #       .to eq "date || credit || debit || balance \n 19/11/2019 || 10.00 || || 10.00 \n 19/11/2019 || || 3.00 || 7.00"
  end

  # describe '#print statement' do
  #   it 'should print the value of a deposit and witdrawal in correct format' do
  #     Account.new
  #     subject.deposit(10)
  #     subject.withdraw(3)
  #     expect(subject.print_statement)
        # .to eq "date || credit || debit || balance \n date here || 10.00 || 3.00 || 7.00"
  #   end
  # end
end

# frozen_string_literal: true

class Account
  attr_accessor :balance, :show_balance, :deposit, :withdrawal

  def initialize
    @balance = 0
    @show_balance = show_balance
  end

  def deposit(credited_money)
    @deposit_amount = credited_money
    self.balance += credited_money
    # Time.now.strftime('%d/%m/%Y')
  end

  def withdraw(debited_money)
    if balance <= 0
      p '0'
    else
      @withdrawal_amount = debited_money
      # Time.now.strftime('%d/%m/%Y')
    end
    self.balance -= debited_money
  end

  def show_balance
    format('%.2f', @balance)
  end

  def print_statement
    # @deposit = deposit
    # @show_balance = show_balance
    p "date || credit || debit || balance \n date here || #{format('%.2f', @deposit_amount)} || #{format('%.2f', @withdrawal_amount)} || #{format('%.2f', @balance)}"
  end
end

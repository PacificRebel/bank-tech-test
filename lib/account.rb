# frozen_string_literal: true

class Account
  attr_accessor :balance, :show_balance, :deposit, :withdrawal

  def initialize
    @balance = 0
    @show_balance = show_balance
  end

  def deposit(money)
    @deposit_amount = self.balance += money
    # Time.now.strftime('%d/%m/%Y')
  end

  def withdraw(money)
    if balance <= 0
      p '0'
    else
      @withdrawal_amount = self.balance -= money
      # Time.now.strftime('%d/%m/%Y')
    end
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

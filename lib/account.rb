# frozen_string_literal: true

class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    self.balance += money
    # Time.now.strftime('%d/%m/%Y')
  end

  def withdraw(money)
    self.balance -= money
    # Time.now.strftime('%d/%m/%Y')
  end

  def show_balance
    '%.2f' % @balance
  end

end


#

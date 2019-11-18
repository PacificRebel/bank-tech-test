# frozen_string_literal: true

class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def add_money(money)
    self.balance += money
  end

  def withdraw_money(money)
    self.balance -= money
  end

  def show_balance
    @balance
  end
end

# balance = 0
#   @transactions.each do |transaction|
#     balance += transaction
#     end
#     return balance
#
# def balance
#
# end
#
# def add_money(money)
#   balance
# end
#
#

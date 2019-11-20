# frozen_string_literal: true

require 'transaction'

# this class manages the bank account: deposits, withdrawals and persistence
class Account
  attr_accessor :balance, :history

  def initialize(transaction = Transaction)
    @balance = 0
    @transaction = transaction
    @history = []
  end

  def deposit(amount)
    @balance += amount
    apply_transaction('credit', amount)
  end

  def withdraw(amount)
    raise 'Insufficient funds' if amount > @balance

    @balance -= amount
    apply_transaction('debit', amount)
  end

  def view(printer = Printer.new)
    print printer.view_history(@history)
  end
end

private

def apply_transaction(type, amount)
  transaction_event = @transaction.new(type: type, amount: amount, \
                                       balance: balance)
  @history.push(transaction_event)
end

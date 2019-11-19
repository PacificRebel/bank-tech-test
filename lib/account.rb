# frozen_string_literal: true

class Account
  attr_accessor :balance, :show_balance, :deposit, :withdrawal, :datestamp, :transaction

  def initialize
    @balance = 0
  end

  def deposit(credited_money)
    @deposit_amount = credited_money
    self.balance += credited_money
    @printed_deposit = format('%.2f', @deposit_amount)
    self.datestamp = Time.now.strftime('%d/%m/%Y')
  end

  def withdraw(debited_money)
    if balance <= 0
      p '0'
    else
      @withdrawal_amount = debited_money
      @printed_withdrawal = format('%.2f', @withdrawal_amount)
      # Time.now.strftime('%d/%m/%Y')
    end
    self.balance -= debited_money
  end

  def show_balance
    format('%.2f', @balance)
  end

  def print_statement
    transactions_array = []
    @transaction = "date || credit || debit || balance \n #{@datestamp} || #{@printed_deposit} || #{@printed_withdrawal} || #{format('%.2f', @balance)}"
    # @transaction.map do |transaction|
       transactions_array.push(@transaction)
       p transactions_array.join
  end
 end
# end

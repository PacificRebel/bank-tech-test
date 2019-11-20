# frozen_string_literal: true

class Transaction
  attr_reader :datestamp, :amount, :type, :balance

  def initialize(type:, amount:, balance:)
    @datestamp = Time.now.strftime('%d/%m/%Y')
    @amount = amount
    @type = type
    @balance = balance
  end
end

# @printed_deposit = format('%.2f', @deposit_amount)
# self.datestamp = Time.now.strftime('%d/%m/%Y')

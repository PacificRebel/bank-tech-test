# frozen_string_literal: true

# this class creates an instance of a transaction: deposit or withdrawal
class Transaction
  attr_reader :datestamp, :amount, :type, :balance

  def initialize(type:, amount:, balance:)
    @datestamp = Time.now.strftime('%d/%m/%Y')
    @amount = amount
    @type = type
    @balance = balance
  end
end

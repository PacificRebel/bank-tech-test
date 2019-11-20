# frozen_string_literal: true

require_relative 'account'
require_relative 'transaction'

# this class prints statement as required in readme
class Printer
  def print_statement(array)
    prints = 'date || credit || debit || balance' + "\n"
    array.each do |event|
      prints += if event.type == 'credit'
                  "#{event.datestamp} || #{format('%.2f', event.amount)} || || "
                else
                  "#{event.datestamp} || || #{format('%.2f', event.amount)} || "
                end
      prints += format('%.2f', event.amount).to_s + "\n"
    end
    prints
  end
end

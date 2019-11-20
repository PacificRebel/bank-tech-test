# frozen_string_literal: true

require 'printer'
require 'account'
require 'transaction'

describe Printer do
  let(:deposit) do
    double :deposit, datestamp: '20/11/2019', type: 'credit', \
                     amount: 10, balance: 0
  end
  let(:withdraw) do
    double :withdraw, datestamp: '19/11/2019', type: 'debit', \
                      amount: 5, balance: 0
  end

  describe '#print statement' do
    it 'should print transactions in reverse chronological order' do
      expect(subject.print_statement([withdraw, deposit])).to eq \
        'date || credit || debit || balance' \
        "\n" + '19/11/2019 || || 5.00 || 5.00' \
        "\n" + '20/11/2019 || 10.00 || || 10.00' + "\n"
    end
  end
end

# frozen_string_literal: true

require 'transaction'
require 'account'

describe Account do
  describe '#initialize' do
    it 'initializes with a balance of 0' do
      Account.new
      expect(subject.balance).to eq 0
    end

    it 'initializes with an empty history' do
      Account.new
      expect(subject.history).to eq []
    end
  end

  # edge case: test for someone withdrawing more than they have
  describe '#deposit' do
    it 'increases balance on deposit' do
      Account.new
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end
  end

  describe '#withdraw' do
    it 'reduces balance on withdrawing funds' do
      Account.new
      subject.deposit(10)
      subject.withdraw(3)
      expect(subject.balance).to eq 7
    end
  end
end

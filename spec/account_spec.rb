# frozen_string_literal: true

require 'transaction'
require 'account'

describe Account do
  let(:printer) { double :printer }
  let(:printer_class) { double :printer_class, new: printer }

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

    it 'raises insufficient funds if withdrawal amount is more than balance' do
      Account.new
      subject.deposit(10)
      expect { subject.withdraw(20) }.to raise_error('Insufficient funds')
    end
  end

  describe '#view' do
    it 'gets statement from printer and pushes it into history array' do
      Account.new
      expect(printer).to receive(:view_history).with(subject.history)
      subject.view(printer_class.new)
    end
  end
end

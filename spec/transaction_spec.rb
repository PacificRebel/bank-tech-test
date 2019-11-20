# frozen_string_literal: true

require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(type: 'credit', amount: 10, balance: 20) }

  it 'is created with a datestamp' do
    expect(transaction.datestamp).to eq '20/11/2019'
  end

  it 'is created with an amount' do
    expect(subject.amount).to eq 10
  end

  it 'is created with a type' do
    expect(subject.type).to eq 'credit'
  end

  it 'has a new balance' do
    expect(subject.balance).to eq(20)
  end
  # it 'has a transaction type' do
  #   expect(subject.type).to eq 'deposit'
  # end
end

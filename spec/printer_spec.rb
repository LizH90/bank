require 'printer'

describe Printer do
  let(:transactionlog) { TransactionLog.new }

  subject(:printer) { described_class.new ['10/01/2012', 'credit', 1000, 1000] }

  it ' Initializes with an empty string' do
    expect(printer.balance_statement).to eq("")
  end

  describe 'Formating statements' do

    it 'The numbers are formated correctly' do
      expect(subject).to respond_to(:format_numbers)
    end

    it 'The numbers are formated correctly' do
      expect(subject).to respond_to(:format_statement)
    end

    it 'The numbers are formated correctly' do
      expect(subject).to respond_to(:full_statement)
    end

  end
end

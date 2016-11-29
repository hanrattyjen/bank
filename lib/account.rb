require 'date'
require 'csv'

class Account

  attr_reader :balance
  attr_accessor :transactions

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
    @transactions = Statement.new
  end

  def deposit(amount)
    @balance += amount
    # need this transaction as an array of date, credit and amount
    new_transaction = @transactions.credit_transaction(amount)
  end

  def withdraw(amount)
    fail "Cannot withdraw. You have no money fool!" if (@balance - amount < 0)
    @balance -= amount
    new_transaction = @transactions.debit_transaction(amount)
  end

  def print_statement
    @transactions.each do |trans|
    #   trans.each do |e|
        print trans
      end
      # transaction.each_with_index do |e, i|
      #   puts e[0] + " " + e[1] + " " + e[2] + " " + e[3]
      # end
    # end
  end

end

  # transaction
    # date
    # amount
    # deposit or withdrawal
    # push each transaction onto a new row of a csv file
    # calculates balance as it goes

require 'date'
require 'csv'

class Account

  attr_reader :balance
  attr_accessor :statement

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    # need this transaction as an array of date, credit and amount
    @statement.credit_transaction(amount, @balance)
  end

  def withdraw(amount)
    fail "Cannot withdraw. You have no money fool!" if (@balance - amount < 0)
    @balance -= amount
    @statement.debit_transaction(amount, @balance)
  end

  def print_statement
    # pulls in statement from statement class and prints to console
  end

end

  # transaction
    # date
    # amount
    # deposit or withdrawal
    # push each transaction onto a new row of a csv file
    # calculates balance as it goes

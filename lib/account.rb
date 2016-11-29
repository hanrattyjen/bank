require 'Date'
require 'csv'

class Account

  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
  end

  def deposit(amount)
    @balance += amount
    # need this transaction as an array of date, credit and amount
      #convert_transaction_array_to_string = array.join(",")
    # save this transaction to a file
      # call to save_to_file method
  end

  def withdraw(amount)
    fail "Cannot withdraw. You have no money fool!" if (@balance - amount < 0)
    @balance -= amount
    # need this transaction as an array of date, debit and amount
      #convert_transaction_array_to_string = array.join(",")
    # save this transaction to a file
    # call to save_to_file method
  end

  def print_statement(array)
    # loads the file
    # formats it nicely
  end

  def save_to_file
    CSV.open("account", "w") do |transaction_row|
      transaction_row << convert_transaction_array_to_string
    end
  end
end

  # transaction
    # date
    # amount
    # deposit or withdrawal
    # push each transaction onto a new row of a csv file
    # calculates balance as it goes

require 'date'
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
    credit_array = [Date.today, 0, amount, @balance]
      #convert_transaction_array_to_string = array.join(",")
    credit_array.join(",")
    # save this transaction to a file
    save_to_file(credit_array)
      # call to save_to_file method
  end

  def withdraw(amount)
    fail "Cannot withdraw. You have no money fool!" if (@balance - amount < 0)
    @balance -= amount
    # need this transaction as an array of date, debit and amount
    debit_array = [Date.today, amount, 0, @balance]
      #convert_transaction_array_to_string = array.join(",")
    debit_array.join(",")
    # save this transaction to a file
    save_to_file(debit_array)
    # call to save_to_file method
  end

  def print_statement(array)
    # loads the file
    # formats it nicely
    line_width = 50
    puts date.ljust(line_width) + " | " + credit.center(line_width) + " | " + debit.center(line_width) + " | " + balance.center(line_width) + " |"
  end

  def save_to_file(string)
    CSV.open("account", "w") do |transaction_row|
      transaction_row << string
    end
  end
end

  # transaction
    # date
    # amount
    # deposit or withdrawal
    # push each transaction onto a new row of a csv file
    # calculates balance as it goes

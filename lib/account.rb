require 'date'
require 'csv'

class Account

  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    # need this transaction as an array of date, credit and amount
    date = Date.today.strftime("%d/%m/%Y")
    credit_array = [date, 0, amount, @balance]
      #convert_transaction_array_to_string = array.join(",")
    save_to_statement(credit_array)
  end

  def withdraw(amount)
    fail "Cannot withdraw. You have no money fool!" if (@balance - amount < 0)
    @balance -= amount
    date = Date.today.strftime("%d/%m/%Y")
    # need this transaction as an array of date, debit and amount
    debit_array = [date, amount, 0, @balance]
    save_to_statement(debit_array)
    end

  def print_statement
    load_file
  end

  def save_to_statement(string)
    @transactions << string
  end


end

  # transaction
    # date
    # amount
    # deposit or withdrawal
    # push each transaction onto a new row of a csv file
    # calculates balance as it goes

require 'Date'

class Account

  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail "Cannot withdraw. You have no money fool!" if (@balance - amount < 0)
    @balance -= amount
  end

  def save_to_file

  end
end





  # transaction
    # date
    # amount
    # deposit or withdrawal
    # push each transaction onto a new row of a csv file
    # calculates balance as it goes

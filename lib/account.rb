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
    fail 'Balance is 0. You cannot withdraw funds.' unless (@balance - amount) >= 0
    @balance -= amount
  end

  def balance
    @balance
  end

  # transaction
    # date
    # amount
    # deposit or withdrawal
    # push each transaction onto a new row of a csv file
    # calculates balance as it goes

end

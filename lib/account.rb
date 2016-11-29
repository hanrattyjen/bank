require 'date'

class Account

  attr_reader :balance, :statement

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    @statement.credit_transaction(amount, @balance)
  end

  def withdraw(amount)
    fail "Cannot withdraw. You have no money fool!" if (@balance - amount < 0)
    @balance -= amount
    @statement.debit_transaction(amount, @balance)
  end

  def print_statement
    print_new
    @statement.transactions.each do |transactions|
      return transactions.join("   || ")
    end
  end

  private

  def print_new
    line_width = 8
    puts "date".ljust(line_width) + " || " + "credit".center(line_width) + " || " + "debit".center(line_width) + " || " + "balance".rjust(line_width)
  end

end

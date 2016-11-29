require './lib/account'
require './lib/statement'
account = Account.new
account.deposit(20)
account.withdraw(10)
account.print_statement

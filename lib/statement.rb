class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def credit_transaction(amount, balance)
    date = Date.today.strftime("%d/%m/%Y")
    credit_array = [date, 0, amount, balance]
      #convert_transaction_array_to_string = array.join(",")
    save_to_statement(credit_array)
  end

  def debit_transaction(amount, balance)
    date = Date.today.strftime("%d/%m/%Y")
    debit_array = [date, amount, 0, balance]
    save_to_statement(debit_array)
  end

  def save_to_statement(transaction)
    @transactions << transaction
  end

end

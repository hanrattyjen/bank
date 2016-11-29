class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def credit_transaction(amount, balance)
    date = Date.today.strftime("%d/%m/%Y")
    credit_array = [date, (sprintf "%.2f", 0), (sprintf "%.2f", amount), (sprintf "%.2f", balance)]
    save_to_statement(credit_array)
  end

  def debit_transaction(amount, balance)
    date = Date.today.strftime("%d/%m/%Y")
    debit_array = [date, (sprintf "%.2f", amount), (sprintf "%.2f", 0), (sprintf "%.2f", balance)]
    save_to_statement(debit_array)
  end

  def save_to_statement(transaction)
    @transactions << transaction
  end
end

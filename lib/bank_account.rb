class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(sum)
    @balance += sum
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @status == "open" && @balance > 0
      true
    elsif @status == "closed"
      false
    else
      false
    end
  end

  def close_account
    @status = "closed"
  end

end

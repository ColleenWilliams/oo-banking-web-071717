class BankAccount

  attr_accessor :balance, :status, :deposit
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
    @@all << self

  end

  def deposit(money)
    @balance += money
  end

  def display_balance
    "Your balance is $#{balance}."
  end


  def close_account
    self.status = "closed"
  end

  def valid?
    if self.status == 'open' && self.balance > 0
      self.status == 'open' && self.balance > 0
    else
      !self.status == 'open' && self.balance > 0
    end
  end



end

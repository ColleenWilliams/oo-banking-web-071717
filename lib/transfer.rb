class Transfer
  # your code here
  attr_accessor :status, :amount,:receiver, :sender
  # attr_reader
  def initialize(sender,receiver,amount)
    @receiver = receiver
    @sender = sender
    @status = 'pending'
    @amount = amount

  end

  def valid?
    if sender.valid? == true && receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? && self.status == 'pending'
      if sender.balance >= self.amount
          receiver.balance += amount
          sender.balance -= amount
          self.status = 'complete'
      else
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end
  end

  def reverse_transfer
    if self.status == "complete"
      self.receiver.balance -= self.amount
      self.sender.balance += self.amount
      self.status = 'reversed'
    end
  end



end

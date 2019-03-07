class Transfer
  attr_accessor :amount, :sender, :receiver, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
<<<<<<< HEAD
    if sender.valid? == true && receiver.valid? == true &&    @sender.balance >= @amount
      true
    else
      false
=======
    if sender.valid? == true && receiver.valid? == true
    true
>>>>>>> c8110f60a5460aad5aef53e62616bac7aa6ea413
    end
  end

  def execute_transaction
<<<<<<< HEAD
    if self.valid? == false || @status == "complete"
      @status = "rejected"
      "Transaction rejected. Please check your account balance."

    else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
=======
    if valid? == true && @status == "pending"
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    else
      "You already did a transaction"
    end

  end

>>>>>>> c8110f60a5460aad5aef53e62616bac7aa6ea413
end

class Transfer
  attr_accessor :amount, :sender, :receiver

  def initialize(sender, receiver, amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? && sender.balance > @amount && @status == "pending"
      sender.deposit(-1 * @amount)
      receiver.deposit(@amount)
      @status = "executed"
    end
  end
end

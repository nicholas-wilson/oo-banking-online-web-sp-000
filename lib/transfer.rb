class Transfer
  attr_accessor :amount, :sender, :receiver

  def initialize(sender, receiver, amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
end

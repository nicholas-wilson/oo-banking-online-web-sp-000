class BankAccount
  attr_accessor :balance, :owner

  def initialize(owner)
    @owner = owner
    @balance = 0
  end
end

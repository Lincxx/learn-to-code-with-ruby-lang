class BankAccount
  # lec 236
  def initialize
    @amount = 5000 #this is in cents $50
  end

  

  def status
    # instance method amount
    "Your bank account has a total of #{amount} dollars"
  end

  private
  def amount 
    @amount / 100
  end
end

ba = BankAccount.new

p ba.status
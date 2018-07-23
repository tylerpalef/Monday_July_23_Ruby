class BankAccount

  @@interest_rate = 0.10
  @@accounts = []
# Creating the interest rate and accounts class variable

  def initialize
    @balance = 0
  end
# The initalize for each bank account

  def balance
    @balance
  end
# This is a reader for the balance instance variable

  def balance=(num)
    @balance = num
  end
# This is a writer (for balance) because you input the argument

  # def deposit = deposit
  #   @deposit
  # end
# We don't want a writer for deposit as that would be private information

  def deposit(num)
    @balance += num
  end

  def withdraw(num)
    @balance -= num
  end

  def self.create
    new_account = self.new # The new account is created when you use this method
    @@accounts.push(new_account) # This adds the new account to the array
    return @@accounts.last # The last item on the array
  end

  def self.total_funds
    total = 0 # Confirming the default total is zero
    @@accounts.each do |account| # Go through each account and make a new array
      total += account.balance # The total is the equivlant to the balance of each account
    end
    return total # Print out the total of all accounts
  end

  def self.interest_time
    @@accounts.each do |account| # Run through each account again
      account.balance *=(1.00+@@interest_rate).round(2) # Their balance is equal/multiplied by their respective balance  and interate rate
    end
  end

end

my_account = BankAccount.create
your_account = BankAccount.create 

puts my_account.balance # 0
puts BankAccount.total_funds # 0

my_account.deposit(200)
your_account.deposit(1000)

puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200

BankAccount.interest_time
puts my_account.balance # 202.0
puts your_account.balance # 1010.0
puts BankAccount.total_funds # 1212.0
my_account.withdraw(50)
puts my_account.balance # 152.0
puts BankAccount.total_funds # 1162.0

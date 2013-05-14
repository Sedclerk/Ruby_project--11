
# C:\Users\Sedinirina\Desktop>irb --simple-prompt
class Account
   attr_accessor :balance, :account_holder
    def initialize
     @balance = 0
    end

    def deposit(money)
     @balance += money
    end

    def withdraw(money)
     @balance -= money
    end

    def display
     puts "Your Name's account: "+ @account_holder
     puts "Your Balance: " + @balance.to_s
    end

    def transfer(money, target_account)
     @balance -= money
     target_account.deposit(money)
    end
end
# nil
a = Account.new
 #<Account:0x2446c80 @balance=0>
a.account_holder = "Steve"
#  "Steve"
a.deposit(100)
#  100
 puts a.balance
# 100
# nil
 puts a.display
# Your Name's account: Steve
# Your Balance: 100
#  nil
 a.withdraw(25)
# => 75
 puts a.balance
# 75
# => nil
 puts a.display
# Your Name's account: Steve
# Your Balance: 75
# => nil
 b = Account.new
# => #<Account:0x255d860 @balance=0>
 b.account_holder = "Jeron"
# => "Jeron"
 b.deposit (4000)
# => 4000
 puts b.balance
# 4000
# => nil
 puts b.display
# Your Name's account: Jeron
# Your Balance: 4000
# => nil
 a.transfer(50, b)
# => 4050
 puts b.balance
# 4050
 puts b.display
# Your Name's account: Jeron
# Your Balance: 4050
 puts a.balance
# 25
 puts a.display
# Your Name's account: Steve
# Your Balance: 25
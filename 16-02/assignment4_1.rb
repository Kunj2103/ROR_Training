module Bank
  class Account
    attr_accessor :balance
    def initialize(balance)
      @balance = balance
    end
    def deposit(rps)
      @balance += rps
      puts "After Deposit, value will be #{@balance}"
    end
    def withdraw(rps)
      if rps < @balance
        @balance -= rps
      else
        puts "No Enough Balance!!"
      end
      puts "After Withdraw, value will be  #{@balance}"
    end
  end

  class Atm < Account
    def initialize(acc)
      @acc = acc
      puts "Enter your PIN"
      @userPin = gets.chomp.to_i
      start(@userPin)
    end
    def start(pin)
      if pin === 123
        show_options
      else
        puts "Enter Correct PIN"
      end
    end
    def show_options
      puts "Enter What You Want"
      puts "1. Show Balance"
      puts "2. Deposit Money"
      puts "3. Withdraw Money."

      puts "Enter your choice"
      @choice = gets.chomp.to_i

      case 
      when @choice == 1
          p @acc.balance
      when @choice == 2
          puts "Enter amount to deposit"
          @deposit_amount = gets.chomp.to_i
          deposit = Proc.new { @acc.deposit(@deposit_amount)}
          puts deposit.call
      else
          puts "Enter amount to withdraw"
          @withdraw_amount = gets.chomp.to_i
          withdraw = -> {@acc.withdraw(@withdraw_amount)}
          withdraw.call
      end
    end
  end

  ac = Account.new(5000)
  puts "Current Balance #{ac.balance}" 
  ac.deposit(5000)
  ac.withdraw(1000)
  atm =Atm.new(ac)

end



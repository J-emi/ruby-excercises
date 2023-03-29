#Object programming excercises II:
#-create the Account Class
#-create private methods(pin and pin_error)
#-create public methods (display_balance, withdraw, deposit)
#- create an instance of Account class (checking_account)
#-include error checking that prevents users from overdrawing their accounts
#-create SavingsAccounts that inherit from Account

class Account
  attr_reader:name
  attr_reader:balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  def pin_error
  return "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == @pin
      if amount >= @balance
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts "You don't have enough money. Currently balance: $#{@balance}."
      end
    else
      puts pin_error
    end
  end

  def deposit(amount)
    @balance += amount
    puts "Deposited #{amount}. New balance: $#{@balance}."
  end
end

class SavingAccount < Account
end

checking_account = Account.new("Karol", 2137)

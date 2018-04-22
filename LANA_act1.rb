$balance = 3000.00

def main_program
        puts "Welcome to ATM Machine!"
        puts "1. Display Account Balance"
        puts "2. Deposit Amount"
        puts "3. Withdraw Amount"
        puts "4. Exit"
        puts "Choose transaction: "
        choice = gets.chomp

        case choice
        when '1'
                disp_balance
        when '2'
                deposit
        when '3'
                withdraw
        when '4'
                goodbye
        end
end

def disp_balance
        puts "Your current account balance is: #{$balance}"
        main_program
end

def deposit
        print "Enter amount to deposit: "
        amount = gets.to_f
        puts ""
        $balance += amount
        disp_balance
        main_program
end

def withdraw
        print "Enter amount to withdraw: "
        amount = gets.to_f
        puts ""
        $balance -= amount
        disp_balance
        main_program
end

def goodbye
        puts "Thank you for using the ATM!"
        exit
end

main_program

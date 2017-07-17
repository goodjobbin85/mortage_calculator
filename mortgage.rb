#calculate balance after 12 months on a loan if only minimum payments are made.
#here min payments are assumed to be 2%
min_pay = 0.02
puts "What is the balance on your account?"
balance = gets.chomp.to_f

puts "what is the APR?"
apr = gets.chomp.to_f


puts "how many months do you have to pay this off?"
total_months = gets.chomp.to_i


month = 0
total_months.times do 
	due = min_pay * balance
	interest_paid = (apr / 12) * balance
	principle_paid = due - interest_paid
	balance -= principle_paid
	month += 1
	puts "Month: #{month}"
	puts ""
	puts "Minimum monthly payment: #{due.round(2)}"
	puts "Principle paid: #{principle_paid.round(2)}"
	puts "Current interest paid: #{interest_paid.round(2)}"
	puts "Remaining balance: #{balance.round(2)}"
end

puts "AFTER #{total_months} MONTHS, YOUR REMAINING BALANCE IS #{balance.round(2)}"




#attempts to calculate how many months it would take 
#to pay off debt with min payments, but this results in 
#infinite iterations
=begin
month = 0
while  balance >= 1.0
	due = min_pay * balance
	interest_paid = (apr / 12) * balance
	principle_paid = due - interest_paid
	balance -= principle_paid
	month += 1
	puts "Month: #{month}"
	puts "Minimum monthly payment: #{due}"
	puts "Principle paid: #{principle_paid}"
	puts "Remaining balance: #{balance}"
end
=end



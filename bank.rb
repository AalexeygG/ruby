def check(total, count)
	while total > 100 && count > 0
		total -= 100
	end
end


puts "Введите первоначальный баланс"
bal_costumer = gets.chomp.to_i
bank_bal = 0
count_5 = 0
count_10 = 0
count_100 = 0
count_50 = 0


while true
	puts "Введите 1 для просмотра баланса"
	puts "Введите 2 для внесения наличных"
	puts "Введите 3 для снятия наличных"
	command = gets.chomp
	if command == '1'
		puts bal_costumer
	
	elsif command == '2'
		puts "Введите размер вашей банкноты"
		banknote = gets.chomp.to_i
		
		if banknote == 50 || banknote == 5 || banknote == 10 || banknote == 100
			bal_costumer += banknote
			bank_bal += banknote
			if banknote == 5
				count_5 += 1
			end
			
			if banknote == 10
				count_10 += 1
			end
			
			if banknote == 50
				count_50 += 1
			end
			
			if banknote == 100
				count_100 += 1
			end
		else
			puts "Купюра не подходит"
		end
	
	elsif command == '3'
		puts "Введите сумму, которую хотите снять"
		total = gets.chomp.to_i
		
		total_copy = total
		c_100 = count_100
		c_50 = count_50
		c_10 = count_10
		c_5 = count_5
		
		if total > bal_costumer
			puts "На балансе недостаточно средств"
		else
			while total_copy >= 100 && c_100 > 0
				total_copy -= 100
				c_100 -= 1
			end
			
			while total_copy >= 50 && c_50 > 0
				total_copy -= 50
				c_50 -= 1
			end
			
			while total_copy >= 10 && c_10 > 0
				total_copy -= 10
				c_10 -= 1
			end
			
			while total_copy >= 5 && c_5 > 0
				total_copy -= 5
				c_5 -= 1
			end
			
			if total_copy == 0
				puts "Запрос выполнен"
				bank_bal -= total
				bal_costumer -= total
				count_100 = c_100
				count_50 = c_50
				count_10 = c_10
				count_5 = c_5
			else
				puts "В банкомате недостаточно купюр, чтобы выдать нужную сумму без сдачи"
			end
		end
	end
end

class matrix_maker(m, n)
	matrix = Array.new(m) { Array.new(n)}
	for i 0..(m - 1)
		row = gets().scan(/\d+/)
		for j 0..(n - 1)
			matrix_1[i][j] = row[j].to_i
		end
	end
	
	return matrix
end

puts "Введите размер 1-ой матрицы(строки)"
m_1 = gets.to_i
puts "Введите размер 1-ой матрицы(столбцы)"
n_1 = gets.to_i

if m_1 <= || n_1 <= 0
	abort "Try again, bro"
end


/matrix_1 = Array.new(m_1) { Array.new(n_1)}
for i 0..(m_1 - 1)
	row = gets().scan(/\d+/)
	for j 0..(n_1 - 1)
		matrix_1[i][j] = row[j].to_i
	end
end/

matrix_1 = matrix_maker.new(m_1, n_1)

puts "Введите размер 2-ой матрицы(строки)"
m_2 = gets.to_i
puts "Введите размер 2-ой матрицы(столбцы)"
n_2 = gets.to_i

matrix_2 = matrix_maker.new(m_2, n_2)


if matrix_1[0].length == matrix_2.length
	matrix_result = Array.new(m_1) {Array.new(n_2)}
	for i 0..m_1 - 1
		

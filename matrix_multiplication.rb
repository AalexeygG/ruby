def matrix_multiplication(matrix_1, matrix_2)
	m1 = matrix_1.length #кол-во строк в 1-ой
	n1 = matrix_1[0].length #кол-во столбцов в 1-ой 
	m2 = n1 #строки во 2-ой
	n2 = matrix_2[0].length #столбы во 2-ой
	matrix_mult = []
	matrix_result = []
	s = 0
	(0..m1 - 1).each do |i|
		(0..n2 - 1).each do |j|
			(0..m2 - 1).each do |k|
				s += matrix_1[i][k] * matrix_2[k][j]
			end
			matrix_mult.push(s)
			s = 0
		end
		matrix_result.push(matrix_mult)
		matrix_mult = []
	end
	
	return matrix_result
	
end

def check(m, n)
	if m <= 0 || n <= 0
		abort "Try again, bro"
	end
end



puts "Введите размер 1-ой матрицы(строки)"
m_1 = gets.to_i
puts "Введите размер 1-ой матрицы(столбцы)"
n_1 = gets.to_i

check(m_1, n_1)

matrix_1 = Array.new(m_1) { Array.new(n_1)}

puts "Введите вашу 1-ую матрицу"
for i in 0..m_1 - 1
	row = gets().scan(/\d+/)
	for j in 0..n_1 - 1
		matrix_1[i][j] = row[j].to_i
	end
end


puts "Введите размер 2-ой матрицы(строки)"
m_2 = gets.to_i
puts "Введите размер 2-ой матрицы(столбцы)"
n_2 = gets.to_i

check(m_2, n_2)

matrix_2 = Array.new(m_2) { Array.new(n_2)}

puts "Введите вашу 2-ую матрицу"
if matrix_1[0].length == matrix_2.length
	(0..m_2 - 1).each do |i|
		row = gets().scan(/\d+/)
		(0..n_2 - 1).each do |j|
			matrix_2[i][j] = row[j].to_i
		end
	end
	
	puts matrix_multiplication(matrix_1, matrix_2)
	
	
else
	puts "Multiplication is unreal(column_1 != row_2)"
end

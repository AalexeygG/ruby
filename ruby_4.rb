class Myclass
	def my_att=(new_value)
		@my_att = new_value
	end
	def my_att
		@my_att
	end
end

my_inst = Myclass.new
my_inst.my_att = "assh"
puts my_inst.my_att
my_inst.my_att = "auj"
puts my_inst.my_att

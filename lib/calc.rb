class Calc
	def initialize *input
		@arr = Array.new input.keep_if {|x| x.is_a? Numeric}
		@arr.push 0 if @arr.empty?
	end

	def plus
		@arr.reduce(:+)
	end

	def minus
		0 - plus
	end

	def clear
		@arr = []															
	end

	def arr
		@arr
	end
end

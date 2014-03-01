module SimpleBrainfuck
	class Interpreter
		attr_accessor :code
		def initialize(filename = nil)
			@code = ""
			load(filename) unless filename.nil?
		end
		def load(filename)
			File.open(filename, "r") { |f| @code = f.read }
		end
		def start
			arr = []
			p = cp = 0
			loop do
				case @code[cp].chr
				when "<"
					p -= 1
					p = 29999 if p < 0
				when ">"
					p += 1
					p = 0 if p > 29999
				when "+"
					arr[p] = 0 unless arr[p]
					arr[p] += 1
					arr[p] = 0 if arr[p] > 255
				when "-"
					arr[p] = 0 unless arr[p]
					arr[p] -= 1
					arr[p] = 255 if arr[p] < 0
				when "."
					print arr[p].chr
				when ","
					arr[p] = gets.chomp[0]
				when "["
					cp += 1 while @code[cp].chr != "]" if arr[p] == 0
				when "]"
					cp -= 1 while @code[cp].chr != "[" if arr[p] != 0
				end
				cp += 1
				break if cp >= @code.length
			end
			puts
		end
	end
end

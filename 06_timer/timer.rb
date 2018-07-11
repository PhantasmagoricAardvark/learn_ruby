class Timer
  #write your code here

	attr_accessor :seconds
	attr_accessor :time_string


	def inititalize(seconds, time_string)
		@seconds = seconds
		@time_string = time_string
		@minutes = 0
		@hours = 0
	end

	def seconds
		@seconds = 0
	end

	def time_string
		@minutes = 0
		@hours = 0
		i = 0
		puts "seconds is : " + @seconds.to_s
		if @seconds > 59

			@seconds.times do
				puts i
				i += 1
				if i == 60
					i = 0
					@minutes += 1
				end
				if @minutes == 60
					@minutes = 0
					@hours += 1
				end

			end

			@seconds = @seconds % 60
			if @seconds < 10
				@seconds = "0" + @seconds.to_s
			end
			if @hours == 0
				@hours = "00"
			else
				@hours = "0" + @hours.to_s
			end

			return @hours + ":" + "0" + @minutes.to_s + ":" + @seconds.to_s
			


		elsif @seconds > 9
			"00:00:" + @seconds.to_s
		else
			"00:00:0" + @seconds.to_s
		end


	end

end

@timer = Timer.new

@timer.seconds = 66 
puts @timer.time_string
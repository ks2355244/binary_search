# Place your solutions here
	
	# Take array and sort it from low to high.
	# Set array[array.length - array.length] as low, set array[array.length - 1] to high.
	# LOOP HERE
	# Take array's middle value "M" [(high - low) / 2].floor and compare it with input.
	# IF input is HIGHER than "M", set "M" as low, set high as high.
	# IF input is LOWER than "M", set low as low, set M as high.
	# BREAK LOOP
	# Take array's middle value "M" [(high - low) / 2].floor and compare with input.
	
	def binary_search(input, array)
		sorted_array = array.sort
		low_index = 0
		high_index = array.length - 1
		m_index = ((high_index + low_index)/2)
		m = array[m_index]
	
	
		until input == m
	
				if input > m # IF input is HIGHER than "M"
					low_index = m_index
					m_index = ((high_index + low_index)/2)
					m = array[m_index]
				elsif input < m # IF input is lower than "M"
					high_index = m_index
					m_index = ((high_index + low_index)/2)
					m = array[m_index]
				end
	
		end
		return m_index
	end
	
	test_array = (100..200).to_a
	puts binary_search(201, test_array) == 35
	# => true
	
	test_array = [13, 19, 24, 29, 32, 37, 43]
	puts binary_search(24, test_array) == 2
	# => true
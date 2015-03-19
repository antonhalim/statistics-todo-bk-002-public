class Array

	def mean
		summary = self.sort.inject{|sum, x| sum +=x}
		 (summary.to_f/self.length).round(2)
	end

	def median
		middle = self.length/2
		self.sort[middle]
	end

	def mode
		count = 0
		hash = self.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
		hash.each{|k, v| 	count = v if v > count}
		hash.key(count)
	end
end

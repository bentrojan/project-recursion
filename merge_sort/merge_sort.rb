def merge (b, c)
	array = []
	t = b.length + c.length
	t.times do
		if b.length == 0
				array << c.shift
		elsif c.length == 0
			array << b.shift
		else
			array << (b[0] < c[0] ? b.shift : c.shift)
		end
	end
	array
end

def merge_sort(a)
	l = a.length

	if l == 1 || l == 0
		return a
	else
		b = merge_sort(a[0..l/2-1])
		c = merge_sort(a[l/2..-1])
	end	

	sorted = merge(b, c)
end



puts merge_sort([1,2,5,4,9,8]).inspect


ex = 30.times.map{rand(200)+1}
puts merge_sort(ex).inspect




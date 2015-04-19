def fibs(n)
	f = [0,1]
	until f.length == n
		f << f[-1] + f[-2]
	end
	f
end

def fibs_rec(n, f=[0,1])
	return f.length == n ? f : fibs_rec(n, f << f[-1] + f[-2])
end




puts "\n\nITERATED"
puts fibs(10).inspect
puts fibs(100).inspect
puts "\n\nRECURSION"
puts fibs_rec(10).inspect
puts fibs_rec(100).inspect
def fibs(n)
	i = [0, 1]
	n.times { i << (i[-2] + i[-1]) }
	i.to_s
end

puts "FIBS:\n 10:#{fibs(10)}\n 30:#{fibs(30)}\n 50:#{fibs(50)}}"


def fibs_rec(ary, n)
	return ary.unshift(0) if n < 0 || ary.unshift(1) if n < 1
	fibs_rec(ary, n-1)
	ary << (ary[-2] + ary[-1])
end

puts "FIBS_REC:\n 10:#{fibs_rec([], 10)}\n 30:#{fibs_rec([], 30)}\n 50:#{fibs_rec([], 50)}"




def merge_sort(ary)	
	return ary if ary.count == 1
	a = merge_sort(ary.slice!(0, (ary.count.to_i/2)))
	b = merge_sort(ary)
	sorted = Array.new
	(b.count + a.count).times do
		if a.empty? && b[0].class == Integer
			sorted << b.shift
		elsif b.empty? && a[0].class == Integer
			sorted << a.shift
		elsif a[0] < b[0]
			sorted << a.shift
		elsif b[0] < a[0]
			sorted << b.shift
		else
			sorted << b.shift
		end
	end
	return sorted
end


def make_array
	array = Array.new
	rand(2..10).times { array.push(rand(1..50))}
	array
end

puts "SORTED: #{merge_sort([7, 4, 12, 1, 6, 0, 11, 3])}\nRANDOM ARRAYS:\n#{merge_sort(make_array)}"
5.times { puts merge_sort(make_array).to_s }


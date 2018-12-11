def fibs(n)
	i = [0, 1]
	n.times { i << (i[-2] + i[-1]) }
	i.to_s
end

puts "FIBS:\n 10:#{fibs(10)}\n 30:#{fibs(30)}\n 50:#{fibs(50)}}"


# THIS CURRENTLY BUILDS THE FIBBONACI SEQUENCE UP TO A CERTAIN NUMBER. 
# TECHINCALLY THIS SATISFIES THE REQUIREMENTS FOR THE FIRST SECTION OF THE PROJECT.


# THIS WILL BE THE RECURSIVE ATTEMPT

def fibs_rec(ary, n)
	return ary.unshift(0) if n < 0 || ary.unshift(1) if n < 1
	fibs_rec(ary, n-1)
	ary << (ary[-2] + ary[-1])
end

puts "FIBS_REC:\n 10:#{fibs_rec([], 10)}\n 30:#{fibs_rec([], 30)}\n 50:#{fibs_rec([], 50)}"

# RUNNING INTO A PROBLEM WITH THE RECURSION.  WHEN 'n' ISN'T USED AS THE MAIN VARIABLE, THE BASE CASE DOESN'T WORK EACH
# TIME IT IS RECALLED.

# THE RECURSIVE METHOD IS GOING TO HAVE TO CONTIUALLY PUSH THE ARRAY BACK INTO THE METHOD AFTER IT HAS BEEN ALTERED.


def merge_sort(ary)	
	puts "ARY: #{ary.to_s}"
	return ary if ary.count == 1
	a = merge_sort(ary.slice!(0, (ary.count.to_i/2)))
	b = merge_sort(ary)
	sort = Array.new

	puts "BEFORE SORTER: #{sort.to_s} A:#{a.to_s} B:#{b.to_s}"

	b.count.times do |x|
		puts "MIDDLE: #{sort.to_s} A:#{a.to_s} B:#{b.to_s} A[X]:#{a[x].class} B[X]:#{b[x].to_s} X:#{x}"
		if a[0] == nil && b[0].class == Integer
			sort << b.shift
		elsif a[0] < b[0]
			sort << a.shift
			sort << b.shift
		elsif b[0] < a[0]
			sort << b.shift
			sort << a.shift
		else
			sort << b.shift
		end
		puts "MIDDLE: #{sort.to_s} A:#{a.to_s} B:#{b.to_s} A[X]:#{a[x].class} B[X]:#{b[x].to_s} X:#{x}\n\n"
	end

	puts "AFTER SORTER: #{sort.to_s} A:#{a.to_s} B:#{b.to_s}"

	return sort
end

array = Array.new
rand(10).times { array.push(rand(10))}
puts array.to_s

puts "SORT: #{merge_sort([7, 4, 12, 1, 6, 0, 11, 3])}\nRANDOM ARRAY: #{merge_sort(array)}"


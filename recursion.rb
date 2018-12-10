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
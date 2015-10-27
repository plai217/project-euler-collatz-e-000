def even_next(n)
  n = n/2
end

def odd_next(n)
  n = n*3 + 1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  
  array = [n] 
  until n == 1
    array << next_value(n)
    n = next_value(n)
  end
  array 

end

def longest_collatz
  longest = 0
  startnumber = 1
  1.upto(1000000).each do |x|
    if collatz(x).length > longest
      longest = collatz(x).length
      startnumber = x
    end
  end
  startnumber
end
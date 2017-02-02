def even_next(n)
  n/2
end

def odd_next(n)
  (3*n + 1)
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  sequence = []
  while n != 1
    sequence << n
    n = next_value(n)
  end
  sequence << n
end

def longest_collatz
  longest_starting_number = 0
  longest_sequence_length = 0
  (500000..1000000).each do |starting|
    current_length = collatz(starting).length
    if(current_length > longest_sequence_length)
      longest_sequence_length = current_length
      longest_starting_number = starting
    end
  end
  longest_starting_number
end

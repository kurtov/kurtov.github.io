def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end


#n - общее количество костей
#m - кол-во костей с заданным номиналом
def simple_probability(n, m)
  num = (5 ** (n-m)) * fact(n)
  denum = (6 ** n) * fact(m) * fact(n-m)
  1.0 * num/denum
end

def make_table(size)
  table = (1..size).to_a.map do |n| 
    (0..n).to_a.map do |m| 
      simple_probability(n,m)
    end
  end
  
  puts "| |#{(0..size).to_a.join('|')}|"
  puts "#{'|-'*(size+2)}|"  
  table.each_with_index do |row, idx|
    puts "|#{idx + 1}|#{row.join('|')}"
  end
end

require 'yaml'

def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end


#n - общее количество костей
#m - кол-во костей с благоприятным номиналом (0..n)
#nominal_event - количество благоприятных номиналов (1..6)
def simple_probability(n, m, nominal_event)
  num = ((6 - nominal_event) ** (n-m)) * (nominal_event ** m) * fact(n) / (fact(m) * fact(n-m))
  denum = (6 ** n) 

  Rational(num, denum)
  #http://files.school-collection.edu.ru/dlrstore/4c27b7b8-bee5-472c-9c93-01e715bf9ca8/sr_tv_rep.pdf
end

def calculate_simple_probabilities size, nominal_event
  table = (1..size).to_a.map do |n| 
    (0..n).to_a.map do |m|
      simple_probability(n,m,nominal_event)
    end
  end
end

def produce_cumm_table table
  table.map do |row|
    rrow = row.reverse
    rrow.size.times.map do |i|
      rrow.first(i+1).reduce(:+)
    end.reverse
  end
end

def format_table table
  table.map do |row|
    row.map do |item|
      item.to_f
    end
  end
end


def format_table_simple table
  table.map do |row|
    max_value = row.max
    row.map do |item|
      {"data" => item.to_f, "select" => item.to_f == max_value ? 1 : 0}
    end
  end
end

def format_table_cumm table
  table.map do |row|
    row.map do |item|
      {"data" => item.to_f, "select" => item.to_f > 0.5 ? 1 : 0}
    end
  end
end


def make_tables(size)
  table = calculate_simple_probabilities size, 1
  table2 = calculate_simple_probabilities size, 2
  cumm_table = produce_cumm_table(table)
  cumm_table2 = produce_cumm_table(table2)
  
  hash = {
    :simple_probability => format_table_simple(table), 
    :simple_probability2 => format_table_simple(table2), 
    :simple_cumm_probability => format_table_cumm(cumm_table),
    :simple_cumm_probability2 => format_table_cumm(cumm_table2)
  }
  
  hash.each do |key, value|
    open("../source/_data/#{key}.yml", 'w') {|f| f << {"size" => size, "prob" => value}.to_yaml}
  end
  
  nil
end
#returns a new MyRational equivalent to the integer
class Integer
  def to_mr(num)
    ans = MyRational.new(num,1)
    return ans
  end
end


class MyRational
  include Comparable # for the <=> operator
  attr_reader :n,:d

  # 1 constructor
  def initialize(a,b)
        raise "MyRational: denominator cannot be 0" if b == 0
        @n = a
        @d = b
  end
  # 2 Get the numerator Returns the numerator of a given rational.
  def num
    @n
  end
  #3 Get the denominator Returns the denominator of a given rational.
  def denom
    @d
  end
  # 4 Returns both the numerator and denominator.
  def pair
    arr = [@n,@d]
    return arr
  end
  # 5 Returns the usual string representation of the rational.
  def to_s
    "MyRational is (#{@n}/#{@d})" 
  end
  # 6 Returns the value as the number as a floating point number.
  def to_f
    return (@n.to_f / @d.to_f)
  end
  # 7 Tests if two given rationals are equal.
  # NOT NEEDED AS WE IMPLEMENTED <=> Comparable
  #def ==(other)
    
  
  # 8 for comparable
  def <=>(other)
    (@n.to_f / @d.to_f) <=> (other.n.to_f / other.d.to_f)
  end
    
 # 9 Tests if a given rational is equal to an integer.
  def int?
    return (@n % @d) == 0
  end

  # 10 Implement +
  def +(other)
    multi = @d.lcm(other.d)
    a = (multi.div(@d)) * @n
    b = (multi.div(other.d)) * other.n
    top = a + b
    ans = MyRational.new(top,multi)
    return ans
  end
  # 11 Implement *
  def *(other)
    top = @n * other.n
    bottom = @d * other.d
    ans = MyRational.new(top,bottom)
    return ans
  end
  # 12 Implement /
  def /(other)
    top = @n * other.d
    bottom = @d * other.n
    ans = MyRational.new(top,bottom)
    return ans
  end
  # 13  Invert a given rational and returns a new one with the numerator and denominator switched
  def invert
    ans = MyRational.new(@d,@n)
    return ans 
  end
  
 # 14 Reduce a given rational and returns a new rational that is in lowest terms.
  def to_lowest_terms
    divi = @n.gcd(@d)
    num = @n.div(divi)
    den = @d.div(divi)
    #ans = Myrational.new(num,den)
    return num , den
  end
  
end

# 15 harmonic sum
def harmonic(number)
  start= MyRational.new(1,1)
  a = 1
  while a < number
    a += 1
    adder = MyRational.new(1,a)
    start += adder
  end
  return start
end
# FOR PART 2
# referenced the function from https://stackoverflow.com/questions/624666/learning-insertion-sort-in-ruby 
# only need this one function for all numbers,strings and MyRational objects
def insertionSort(arr)
  for i in (1...(arr.size))
    if arr[i-1] > arr[i]
      i.downto(1) do |el|
        if arr[el] < arr[el-1]
          arr[el-1], arr[el] = arr[el], arr[el-1]
        end
      end
    end
  end
  arr
end



#
# main
#

=begin
test1 = MyRational.new(1,2)
errortest = MyRational.new(3,0)
test2 = MyRational.new(3,4)

puts test1.num
puts test2.denom
puts test1.pair
puts test2.to_s    
puts test1.to_f  
=end
test1 = MyRational.new(1,2)
test2 = MyRational.new(3,4)
test3 = MyRational.new(2,4)
#puts test3.to_lowest_terms
#puts test3 <=> test1
#puts test3 == test1
#puts test2 <=> test1
#puts test2 > test1
#puts test3.int? 
test4 = MyRational.new(4,1)
#puts test4.int?
#puts test1 + test2 
#puts test1 * test2 
#puts test1 / test2 
#puts test2.invert
#puts harmonic(4)

# FOR PART 2
=begin
arr = [5, 2, 4, 6, 1, 3]
arr2 = ["this","is","a","test"]
arrtest = [test1,test2,test3,test4]
p insertionSort(arr)
p insertionSort(arr2)
puts insertionSort(arrtest)
=end

# FOR TIME TESTING NUMBERS , STRINGS AND MyRational
def rand_array(x)
  x.times.map{ Random.rand() }
end


def randstr(x)
  o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
  x.times.map{string = (0...5).map { o[rand(o.length)] }.join}
end


def randRats(x)
  x.times.map{ MyRational.new(Random.rand(),1 + Random.rand()) }
end

=begin
g = 1000
while g <= 10000
  t1 = Time.now
  insertionSort(rand_array(g))
  g += 1000
  t2 = Time.now
  delta1 = t2 - t1 # in seconds
  puts delta1
end
=end

=begin
g = 1000
while g <= 10000
  t1 = Time.now
  insertionSort(randstr(g))
  g += 1000
  t2 = Time.now
  delta1 = t2 - t1 # in seconds
  puts delta1
end

=end
=begin
g = 1000
while g <= 10000
  t1 = Time.now
  insertionSort(randRats(g))
  g += 1000
  t2 = Time.now
  delta1 = t2 - t1 # in seconds
  puts delta1
end
=end

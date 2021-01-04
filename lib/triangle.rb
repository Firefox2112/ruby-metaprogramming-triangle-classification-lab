class Triangle
attr_accessor :sideA, :sideB, :sideC

def initialize(sideA, sideB, sideC)
  @sideA = sideA
  @sideB = sideB
  @sideC = sideC
end

def valid?
array = [@sideA, @sideB, @sideC].sort
if [@sideA, @sideB, @sideC].any? {|each| each <= 0} || array.pop >= array[0] += array[1]
    raise TriangleError
end
end





def kind
  if valid?
  else
  if [@sideA,@sideB,@sideC].uniq.length == 1
    :equilateral
  elsif
    [@sideA,@sideB,@sideC].uniq.length == 2
    :isosceles
  elsif
    [@sideA,@sideB,@sideC].uniq.length == 3
    :scalene
  end
  end
end


class TriangleError < StandardError
  def message
    "This is not a legal triangle"
  end
end


end
class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
  def initialize(arr1, arr2)
    @array1 = arr1
    @array2 = arr2
  end
  
  def each
   # ret = []
    @array1.each { |x|
    #temp = [x]
      @array2.each { |y|
        #temp.push(y)
        yield [x,y]
      }
     # ret.push(temp)
    }
    #return ret
  end
end


#check
#CartesianProduct.new([1,2,3],['a','b'])
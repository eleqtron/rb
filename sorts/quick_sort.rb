def quick_sort(arr)
  raise ArgumentError unless arr.is_a?(Array)
  if arr.size <= 1
    arr
  else
    pivot = arr.sample
    less = []
    greater = []
    arr.delete_at( arr.index(pivot) )
    arr.each do |x|
      if x <= pivot
        less << x
      else
        greater << x
      end
    end

    sort_arr = []
    sort_arr << quick_sort(less)
    sort_arr << pivot
    sort_arr << quick_sort(greater)
    sort_arr.flatten!
  end
end

p quick_sort([1,3,7,2,4,5,6,19,2])
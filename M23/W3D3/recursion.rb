# require "byebug"
def sum_to(n)
    return nil if n < 0
    return 1 if n == 1
    n + sum_to(n - 1)
end


def add_numbers(nums_array)
    return nil if nums_array.empty?
    return nums_array[0] if nums_array.length == 1
    nums_array.first + add_numbers(nums_array[1..-1])
end

def gamma_fnc(n)
    return nil if n < 1
    return 1 if n == 1
    (n - 1) * gamma_fnc(n - 1)
end

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    return true if flavors.last == favorite
    ice_cream_shop(flavors[0..-2], favorite)
end

def reverse(string)
    return string if string.length < 1
    string[-1] += reverse(string[0..-2])

end
def range(start_num, end_num)
  result = []
  return [] if end_num < start_num
  return [start_num] if start_num == end_num - 1
  result = [start_num] + range(start_num + 1, end_num)
  result
end

def sum(arr)
  result = 0
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  result += arr[0] + sum(arr[1..-1])
end

def sum_to(arr)
  result = 0
  return 0 if arr.empty?
  (0...arr.length).each {|i| result += arr[i] }
  result
end

def bsearch(arr, target)
    pivot = arr.length / 2
    return nil if arr.empty?
    return arr.index(target) if target == array[pivot]
    left_si
    if (target <=> arr[pivot]) == -1
        bsearch(arr.take(pivot), target)
    elsif (target <=> arr[pivot]) == 0
        return pivot
    elsif (target <=> arr[pivot]) == 1
        if bsearch(arr.drop(pivot), target)

        else
          return nil
        end
    end

end

class Array
def merge_sort
    return self if count < 2
    pivot = count / 2
    left = self.take(pivot)
    right = self.drop(pivot)
    sorted_left = left.merge_sort
    sorted_right = right.merge_sort
    merge(sorted_left, sorted_right)
end
def merge(left, right)
  result = []
    if left < right
      result << [left, right]
    else
      result << [right, left]
    end
    result
end

end

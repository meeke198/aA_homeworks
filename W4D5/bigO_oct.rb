arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def quadratic_oct(arr)
biggest_fish = 0
    arr.each_with_index do |fish, i|
    arr.each_with_index do |fish2, i2|
        biggest_fish = fish2 if i2 > i && fish2.length > fish.length
    end
    end
    biggest_fish
end
# p sluggish_oct(arr)


def loglinear_oct(arr)
    biggest_fish = arr.first
    arr.each_with_index do |fish, i|
        biggest_fish = fish if i > arr.index(biggest_fish) && fish.length > biggest_fish.length
    end
    biggest_fish
end
# p loglinear_oct(arr)

class Array
    def merge_sort(&prc)
        prc ||= Proc.new { |a, b| a <=> b }

        return self if count <= 1

        mid = count / 2
        sorted_left = self.take(mid).merge_sort(&prc)
        sorted_right = self.drop(mid).merge_sort(&prc)

        Array.merge(sorted_left, sorted_right, &prc)
    end
    def self.merge(left, right, &prc)
        merged = []

        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
            when -1
                merged << left.shift
            when 0
                merged << left.shift
            when 1
                merged << right.shift
            end
        end
        merged + left + right
    end
end

def nlogn_biggest_fish(arr)
  prc = Proc.new { |a, b| b.length <=> a.length }
  arr.merge_sort(&prc)[0]
end
p nlogn_biggest_fish(arr)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |dir, i|
        return i if dir == direction
    end
end

def fast_dance(direction, tiles_array)
    tiles_array.index(direction)
end

p slow_dance("up", tiles_array)
p fast_dance("up", tiles_array)

def fibonacci(n)
  if n.is_a?(Integer)
    arr = []

    (0..n).each { |a|
      if a == 0 || a == 1
        arr.push a
      else
        arr.push arr[a - 1] + arr[a - 2]
      end
    }

    arr
  end
end

puts fibonacci 100

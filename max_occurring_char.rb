def max_ocurring_char(value)
  if value.is_a?(String)
    words = value.split("")
    sequence = Hash.new

    words.each do |i|
      if sequence.has_key?(i)
        next
      else
        words.each { |j|
          if j == i
            occurring = sequence.has_key?(i) ? sequence[i] : 0
            sequence.store(i, occurring + 1)
          end
        }
      end
    end

    res = sequence.sort_by { |k,v| v}
    max_ocurring = res[res.length - 1]
    max_ocurring[0]
  end
end

puts max_ocurring_char("apple")

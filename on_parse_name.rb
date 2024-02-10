def on_parse_name(name = nil)
  if name.nil?
    nil
  elsif name.is_a?(String)

    original = name.split(" ")
    uppers = []

    original.each_index { |index|
      value = original[index]

      if value.length <= 3
        uppers.append value
      elsif index == 0 || index == original.length - 1
        uppers.append value
      else
        uppers.append value.length == 0 ? value : "#{value[0]}"
      end
    }

    uppers.join " "
  end
end

puts on_parse_name("Francisco Hello J Livro  Jhonathan")
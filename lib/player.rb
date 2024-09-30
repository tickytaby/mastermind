class Player

  def guess(x, secret_code)
    x.each_with_index do |color, index|
      case
      when color == secret_code[index]
        puts "Color #{color} is correct and in the right position at #{index}"
      when secret_code.include?(color)
        puts "Color #{color} is correct but in the wrong position"
      else
        puts "Color #{color} is not in the secret code"
      end
    end
  end
  
end
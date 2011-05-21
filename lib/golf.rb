class Golf
  class << self
    def hole1(array_of_numbers)
      array_of_numbers.inject(1) {|total,a| total * a}
    end

    def hole2(sentence)
      words = sentence.split(/ /)
      words.sort{|a,b| a.split(//)[1] <=> b.split(//)[1]}.join(' ')
    end

    def hole3(factorial)
      (1..factorial).inject(1) {|total, a| total * a}
    end

    def hole4(things)
      things.map{|thing|
        case thing
        when /man/: "hat(#{thing})"
        when /dog/: thing.sub(/dog\((.+)\)/, "dog(\\1(bone))")
        when /cat/: thing.sub(/cat\((.+)\)/, "dead(\\1)")
        end
      }
    end

    def hole5(list)
      result = []
      (1..list.length).each do |i|
        list.each_cons(i) {|a| result << a}
      end
      result
    end
    
    def hole6(fizzbuzz)
      (1..fizzbuzz).map {|a|
        if a.remainder(3.0) == 0 && a.remainder(5.0) == 0
          "fizzbuzz"
        elsif a.remainder(3.0) == 0
          "fizz"
        elsif a.remainder(5.0) == 0
          "buzz"
        else
          a
        end
      }
    end

  end
end

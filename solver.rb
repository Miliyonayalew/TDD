class Solver
    def factorial(n)
        n.zero? ? 1 : n.positive? ? n * factorial(n-1) : 'Please enter a positive number'
    end

    def reverse(word)
        word.is_a?(String) ? word.reverse : 'Please enter a string'
    end

    def fizzbuzz(n)
        if n.modulo(3).zero? && n.modulo(5).zero?
            'fizzbuzz'
        elsif n.modulo(3).zero?
            'fizz'
        elsif n.modulo(5).zero?
            'buzz'
        else
            n.to_s
        end
    end
end

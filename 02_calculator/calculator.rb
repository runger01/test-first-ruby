def add *numbers
    numbers.inject(0) {|result, number| result + number}
end

def subtract *numbers
    numbers.inject {|result, number| result - number}
end

def multiply *numbers
    numbers.inject(1) {|result, number| result * number}
end

def sum numbers
    numbers.inject(0) {|result, number| result + number}
end

def power number, exponent
    number ** exponent
end

def factorial number
    if number == 0
        return 1
    end
    range = Array(1..number)
    range.inject(1) {|result, value| result * value}
end

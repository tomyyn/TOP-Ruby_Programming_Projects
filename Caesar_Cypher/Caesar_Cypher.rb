def c_shift(c,shift)
    c=c.ord
    if(c>= 65 && c<= 90)
        a=65
    elsif (c>=97 && c<=122)
        a=97
    else
        return c.chr
    end
    c=(c-a+shift)%26
    return (c+a).chr
end

def caesar_cypher(s,shift)
    a=s.split("").map{|c| c_shift(c,shift)}.join
end

puts caesar_cypher("Hello, I am testing!",10)
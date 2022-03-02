def sub_string(dic,w,total)
    dic.each{|d| total[d]+=1 if(w.include?(d))}
    total
end

def sub_strings(dic,w)
    total=Hash.new(0)
    w.split(" ").each{|p| sub_string(dic,p.downcase,total)}
    total
end

dic=["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
w="Howdy partner, sit down! How's it going?"

puts sub_strings(dic,w)
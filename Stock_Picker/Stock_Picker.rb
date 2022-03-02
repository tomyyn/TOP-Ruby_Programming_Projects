def stock_picker(days)
    buy=days.length-1
    sell=buy
    imax=sell
    (days.length-2).downto(0) do |i|
        if days[i]>days[imax]
            imax=i
        elsif((days[imax]-days[i])>(days[sell]-days[buy]))
            buy=i
            sell=imax
        end
    end

    return[buy, sell]
end

days=[17,3,6,9,15,8,6,1,10]
print stock_picker(days)
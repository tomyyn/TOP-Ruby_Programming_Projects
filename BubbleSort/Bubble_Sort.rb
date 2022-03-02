def bubble_sort(arr)
    (arr.length-1).downto(1) do |lim|
        0.upto(lim-1) do |i|
            if(arr[i]>arr[i+1])
                aux=arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = aux
            end
        end
    end
    arr
end

puts bubble_sort([4,3,78,2,0,2,13,1,42,-1])
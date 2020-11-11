array = [17,3,6,9,15,8,6,1,10]

def stockpicker(array)
    nArray = Array.new
    ganancia = 0
    
    array.reverse_each do |item|
        i = array.index(item) - 1
        while i >= 0 do
            diferencia = item - array[i]
            if diferencia > ganancia
                ganancia = diferencia  
                nArray[0] = i
                nArray[1] = array.index(item)
            end
            i -= 1
        end
    end
    puts "Ganancia: #{ganancia}"
    nArray
end

p stockpicker(array)
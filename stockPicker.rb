array = [19,20,6,9,15,8,18,1,10]

def stockpicker(array)
    nArray = Array.new
    if(array.index(array.max) == 0)  #Si el mayor valor cae el primer dia no es opción de compra ni de venta, por eso se saltea como mayor
        a1 = array.select{|num| num != array[0]}
        maxArray = a1.max
        min = a1[0..a1.index(maxArray)].min
        nArray<<array.index(min) && nArray<<array.index(maxArray)
    else
        maxArray = array.max
        min = array[0..array.index(array.max)].min
        nArray<<array.index(min) && nArray<<array.index(maxArray)
    end

    ganancia = maxArray - min
    puts "Para una ganancia de #{ganancia}"
    nArray
end

p stockpicker(array)
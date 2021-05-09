def array_to_hash(array)
    hash_new = {}
    array.map.with_index  {|value| hash_new.store(value[0], value[1])}
    return hash_new
end


def cont_repeat_in_array (array)
    array_new = []
    variaveis = array.uniq
    for k in variaveis
        array_new.append([k, (array.count k)])
    end
    return array_new
end
    

def alguma_coisa (array)
    array_new = cont_repeat_in_array(array)
    hash_new = array_to_hash(array_new)
    puts hash_new
end


alguma_coisa([1,2,2,2,2,3,3,3,4,4])
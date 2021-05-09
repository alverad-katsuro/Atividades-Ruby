def cont_repeat_in_array (array)
    array_new = []
    variaveis = array.uniq
    for k in variaveis
        array_new.append([k, (array.count k)])
    end
    return array_new
end
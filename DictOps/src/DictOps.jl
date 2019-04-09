module DictOps

"""
ret_dic is dict to add (key, value) in tmp_dic
"""
function add_dict!(ret_dic, tmp_dic)
    key_ret = keys(ret_dic)
    for k in keys(tmp_dic)
        if k in key_ret
            ret_dic[k] += tmp_dic[k]
        else
            ret_dic[k] = tmp_dic[k]
        end
    end
end


"""
counting a number of components that have a specific value
its numbers are registered dictionary "res"
"""
function count_dict(arr)
    res = Dict()
    set_arr = Set(arr)
    for key in set_arr
        res[key] = sum([1 for xs in arr if xs==key])
    end
    return res
end

end # module

-- Defines a function 
function fact (n)
    if n == 0 then 
        return 1
    else
        return n * fact(n-1) -- calls self in recursion
    end
end

print("enter a number: ")
a = io.read("*number") --get number from IO
print(fact(a))
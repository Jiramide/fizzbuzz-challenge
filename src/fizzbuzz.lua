-- Coda, 11/31/2018

local output = ""

for i = 1, 100 do
    if i % 3 == 0 then 
        output = output .. "fizz" 
    end
    if i % 5 == 0 then 
        output = output .. "buzz"
    end
    if output == "" then 
        output = output .. i -- type coercion
    end

    print(output)

    output = ""
end

local names = {
    {"Quandale", "Bonerbeater", "Tickletipson", "Albert", "Goofingtion", "Quandalius", "Goofy goober", "Juandale", "Juantavious", "Jamarius", "Uncle", "Doodoosniff", "Martin Luther"},
    {"Dingleberry", "Wrigleworm", "Jonathan", "Fingernoodle", "Scratchensniff", "Trippledickson", "Cornelius", "Bugglesmith", "Big Johnson", "Squintillion"},
    {"The third", "Footlicker", "Dookey", "Bingleton", "Bugfucker", "Madienchaser", "Clitsniffer", "Cochiekisser"," Winkledink", "Meatbeater", "Pringleton", "Dicksmith", "Ballbeater", "Tittylicker", "Sexmaster"}
}

local tempNames = {}

local repeats = 0

local run = true

local saved = {
    {nil},
    {nil},
    {nil}
}

local runTimes = 10

local function run(amount) 
    tempNames = {"value"}
    repeats = 0
    if saved[1][1] == nil and saved[2][1] == nil and saved[3][1] == nil then
        for i = 1, amount, 1 do 
            local name = names[1][math.random(1, #names[1])].." "..names[2][math.random(1, #names[2])].." "..names[3][math.random(1, #names[3])]
            print(name)
            
            

            for i, v in pairs(tempNames) do 
                
                if v == name then 
                    
                    repeats = repeats + 1

                else 

                    table.insert(tempNames, name)
                    break
                    

                end
            end





            
        end
    
    

    elseif saved[1][1] ~= nil then

        for i = 1, amount, 1 do 
            local name = names[1][saved[1][1]].." "..names[2][math.random(1, #names[2])].." "..names[3][math.random(1, #names[3])]
            print(name)
            
        end
    


    elseif saved[2][1] ~= nil then
        for i = 1, amount, 1 do 
            local name = names[1][math.random(1, #names[1])].." "..names[2][saved[2][1]].." "..names[3][math.random(1, #names[3])]
            print(name)
            
        end
    


    elseif saved[3][1] ~= nil then
        for i = 1, amount, 1 do 
            local name = names[1][math.random(1, #names[1])].." "..names[2][math.random(1, #names[2])].." "..names[3][saved[2][1]]
            print(name)
            
        end
    end
    


    
end

while run do 

    run(runTimes)
    print(repeats .. " repeats")
    
    
    

    io.write("How many name to generate?")

    local answer = io.read()

    if answer == "exit" then
        run = false
    end



    runTimes = answer

    

end
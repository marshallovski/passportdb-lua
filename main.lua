local app = {
    appname = 'Passports database',
    version = 1.0
}

local passports = {
    [0001] = { name = 'Darina Kravchenko', age = 27, birthdate = '15.10.1995' },
    [0002] = { name = 'John Doe', age = 41, birthdate = '03.12.1981' }
}

function main()
    io.write('Welcome to ' .. app.appname .. ', version ' .. app.version .. '\nMenu: \n1: change passport\n2: get passport data\n')
    local cmd = io.read()
    if cmd == '1' then
        io.write('Enter passport ID: ')
        local currentid = tonumber(io.read())
        change_passport(currentid)
    else
        if cmd == '2' then
            io.write('Enter passport ID: ')
            get_passport(tonumber(io.read()))
        else
            io.write('\nInvalid choose!\n')
        end
    end
end

function change_passport(id)
    io.write('\nNow editing passport #' .. id .. '\n')
    get_passport(id)
    io.write('\nWhat you want to change?\n1: name\n2: age\n3: birthday\n')
    local cmd = io.read()
    if cmd == '1' then
        io.write('Enter new name of ' .. passports[id].name .. ':\n')
        local newName = io.read()
        if newName ~= nil then
            passports[id].name = newName
            io.write('\nSuccessfully changed passport #' .. id .. '!\n')
            get_passport(id)
        end

    else
        if cmd == '2' then
            io.write('Enter new age of ' .. passports[id].name .. ':\n')
            local newAge = io.read()
            if newAge ~= nil then
                passports[id].age = newAge
                io.write('\nSuccessfully changed passport #' .. id .. '!\n')
                get_passport(id)
            end
        end
        if cmd == '3' then 
            io.write('Enter new birthday of ' .. passports[id].name .. ':\n')
            local newBirthDay = io.read()
            if newBirthDay ~= nil then
                passports[id].birthdate = newBirthDay
                io.write('\nSuccessfully changed passport #' .. id .. '!\n')
                get_passport(id)
            end
        end
    end
end

function get_passport(id)
    io.write('\nPassport #' .. id .. '\n')
    io.write('Name: ' .. passports[id].name .. '\nAge: ' .. passports[id].age .. '\nBirthday: ' .. passports[id].birthdate .. '\n')
end

main()

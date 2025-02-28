function cavarTunel()
    local largura = 3
    local altura = 3
    local profundidade = 50

    for i = 1, profundidade do
        for h = 1, altura - 1 do
            turtle.digUp()
        end
        for w = 1, largura do
            turtle.dig()
            turtle.forward()
            if w < largura then
                turtle.turnRight()
                turtle.dig()
                turtle.forward()
                turtle.turnLeft()
            end
        end
        if i < profundidade then
            if i % 2 == 1 then
                turtle.turnLeft()
                turtle.forward()
                turtle.turnLeft()
            else
                turtle.turnRight()
                turtle.forward()
                turtle.turnRight()
            end
        end
    end
end

cavarTunel()

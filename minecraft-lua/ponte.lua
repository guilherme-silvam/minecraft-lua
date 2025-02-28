function construirPonte()
    local largura = 5
    local comprimento = 40

    for i = 1, comprimento do
        for j = 1, largura do
            turtle.placeDown() -- Coloca bloco abaixo
            if j < largura then
                turtle.forward()
            end
        end
        if i < comprimento then
            if i % 2 == 1 then
                turtle.turnRight()
                turtle.forward()
                turtle.turnRight()
            else
                turtle.turnLeft()
                turtle.forward()
                turtle.turnLeft()
            end
        end
    end
end

construirPonte()

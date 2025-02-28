function construirEscada()
    local profundidade = 50
    local altura = 4

    for i = 1, profundidade do
        for j = 1, altura do
            turtle.digDown()
            turtle.down()
        end
        turtle.forward()
    end
end

construirEscada()


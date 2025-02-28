# 🚀 ComputerCraft - Exercícios de Automação com Turtle

Este repositório contém três scripts em **Lua** para o mod **ComputerCraft** no Minecraft. Os scripts permitem que uma Turtle construa automaticamente uma **ponte**, uma **escada** e um **túnel**.

## 📌 Requisitos

- Minecraft com **Forge** instalado
- Mod **ComputerCraft: Tweaked**
- Uma **Turtle Avançada** no jogo (ou uma normal com os materiais necessários)

## 📂 Estrutura do Repositório

```
📦 minecraft-lua
 ┣ 📜 ponte.lua   # Script para construir uma ponte
 ┣ 📜 escada.lua  # Script para escavar uma escada
 ┣ 📜 tunel.lua   # Script para escavar um túnel
 ┗ 📜 README.md   # Documentação
```

## 🛠 Como Usar os Scripts

### 1️⃣ **Criando um arquivo dentro da Turtle**

Abra o terminal da Turtle e digite:
```sh
edit <nome_do_arquivo>
```
Exemplo para o script da ponte:
```sh
edit ponte
```

Depois, cole o código do script correspondente, salve (**CTRL + S**) e feche (**CTRL + W**).

### 2️⃣ **Executando o script**
No terminal da Turtle, digite:
```sh
<nome_do_arquivo>
```
Exemplo:
```sh
ponte
```

A Turtle começará a executar a construção automaticamente.

---

## 📜 Scripts Disponíveis

### 🏗 1. **Construção de Ponte (5x40)**

📌 A Turtle cria uma ponte de **5 blocos de largura** e **40 blocos de comprimento**, colocando blocos abaixo enquanto se move.

💾 **Arquivo:** `ponte.lua`

```lua
function construirPonte()
    local largura = 5
    local comprimento = 40

    for i = 1, comprimento do
        for j = 1, largura do
            turtle.placeDown()
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
```

---

### 🔽 2. **Escavação de Escada (50 níveis, 4 blocos de altura)**

📌 A Turtle escava uma escada de **50 níveis** de profundidade, com **4 blocos de altura** por nível.

💾 **Arquivo:** `escada.lua`

```lua
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
```

---

### 🚇 3. **Escavação de Túnel (3x3, 50 blocos de profundidade)**

📌 A Turtle escava um túnel de **3 blocos de altura**, **3 de largura** e **50 de profundidade**.

💾 **Arquivo:** `tunel.lua`

```lua
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
```






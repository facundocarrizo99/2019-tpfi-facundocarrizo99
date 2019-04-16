botin x
    |   "Jack Sparrow" = [("Brujula", 10000),("Frasco de Arena", 0)]
    |   "David Jones" = [("cajita", 1)]
    |   "Anne Bonny" = [("doblones", 100), ("arena", 1)]

cantidadDeTesoros = length.botin

valorTesoro (nombre, valor) = valor
valorBotin pirata = sum (map valorTesoro (botin pirata))
afortunado pirata = valorBotin pirata > 10000

mayorValor pirata = maximum (map valorTesoro (botin pirata))

nuevoTesoro pirata (nombreN, valorN) = botin pirata ++ (nombreN, valorN) 

tesoroValioso (n,v) = v > 100
pirataPierdeTesoroValioso (n, v) = filter (not.tesoroValioso) (botin pirata)

tesoroValiosoNombre x (n,v) = n == x
pirataPierdeTesoroValiosoNombre (n, v) = filter (not.tesoroValiosoNombre) (botin pirata)

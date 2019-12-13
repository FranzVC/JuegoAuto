require './lib/Auto'

class Tablero
    def initialize()
        @dimX=3
        @dimY=3
        @vecAutos = Array[]
    end

    def vecAutos()
        @vecAutos
    end

    def getDimX()
        @dimX
    end

    def getDimY()
        @dimY
    end

    def addAuto(posX, posY, orientacion,nombre)
        auto = Auto.new
        auto.setNombre(nombre)
        auto.setOrientacion(orientacion)
        auto.setPosX(posX.to_i)
        auto.setPosY(posY.to_i)
        @vecAutos.push(auto)
    end
    
    def getAutos()
        return @vecAutos
    end

 
end
class Auto
    def initialize()
        @posX=1
        @posY=1
        @orientacion='S'
    end

    def getPosX()
        @posX
    end

    def getPosY()
        @posY
    end

    def getOrientacion()
        @orientacion
    end

    def cambiarOrientacion(direccion)
        if (@orientacion == 'N') 
            if(direccion=='I')
                @orientacion='O'
            elsif (direccion=='D')
                @orientacion='E'
            end

        elsif(@orientacion == 'S')
            if(direccion=='I')
                @orientacion='E'
            elsif (direccion=='D')
                @orientacion='O'
            end
        
        elsif(@orientacion == 'E')
            if(direccion=='I')
                @orientacion='N'
            elsif (direccion=='D')
                @orientacion='S'
            end
    
        elsif(@orientacion == 'O')
            if(direccion=='I')
                @orientacion='S'
            elsif (direccion=='D')
                @orientacion='N'
            end    
        end
    end


    def avanzar()
        if (@orientacion == 'N') 
            self.posY = posY - 1
        elsif(@orientacion == 'S')
            self.posY = posY + 1
        elsif(@orientacion == 'E')
            self.posX = posX + 1
        elsif(@orientacion == 'O')
            self.posX = posX - 1    
        end
    end

end


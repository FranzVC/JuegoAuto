class Auto
    def initialize()
        @posX=1
        @posY=1
        @orientacion='S'
        @nombre="salmonela"
    end

    def getPosX()
        return @posX
    end

    def getPosY()
        return @posY
    end

    def getNombre()
        return @nombre
    end

    def setNombre(n_nombre)
        @nombre = n_nombre
    end

    def setPosX(pos_x)
        @posX = pos_x
    end

    def setPosY(pos_y)
        @posY = pos_y
    end

    def getOrientacion()
        @orientacion
    end
    def setOrientacion(orientacion)
        @orientacion = orientacion
    end

    def seguirInstruccion(instruccion)
        chars = instruccion.chars
        chars.each do |c|
            if (c == 'A')
                avanzar()
            elsif (c == 'I' || c=='D')
                cambiarOrientacion(c)
            end
        end
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
           @posY-=1
        elsif(@orientacion == 'S')
            @posY+=1
        elsif(@orientacion == 'E')
            @posX+=1
        elsif(@orientacion == 'O')
            @posX-=1    
        end
    end

end


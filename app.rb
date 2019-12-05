require 'sinatra'

get '/' do
    erb :formulario
end

post '/datos' do
    @ancho=params[:ancho]
    @alto=params[:alto]
    @posIniX=params[:posIniX]
    @posIniY=params[:posIniY]
    @orientacion = params[:orientacion]
    erb :datos
end

def moverAuto()
    @posX=params[:posIniX]
    @posY=params[:posIniY]
    @orientacion = params[:orientacion]
    @instrucciones = params[:instrucciones]
    puts instrucciones

    if (@orientacion == 'N') 
       
    elsif(@orientacion == 'S')
    
    elsif(@orientacion == 'E')

    elsif(@orientacion == 'O')

    else

    end
end
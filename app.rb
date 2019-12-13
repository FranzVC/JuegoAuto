require 'sinatra'

get '/' do
    erb :index
end

post '/formulario' do
    @cantAutos=params[:cantAutos]
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

    
end
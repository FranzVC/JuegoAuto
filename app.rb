require 'sinatra'

$cantidad_de_autos = 1

get '/' do
    @cantidad_de_autos = $cantidad_de_autos
    erb :index
end

post '/formulario' do
    @cantAutos=params[:cantAutos]
    erb :formulario
end

post '/cantAutos' do
    $cantidad_de_autos = params[:autos]
    redirect "/"
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
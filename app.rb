require 'sinatra'
require './lib/Tablero'

$cantidad_de_autos = 1

get '/' do
    @cantidad_de_autos = $cantidad_de_autos
    erb :main
end

post '/tablero' do
    @tablero = Tablero.new
    @cantAutos = $cantidad_de_autos.to_i
    @size=params[:sizes].to_i
    for i in 1..@cantAutos do
        tmp_orientacion = 'orientacion' + i.to_s
        tmp_pos_x = 'posx' + i.to_s
        tmp_pos_y = 'posy' + i.to_s
        tmp_nombre = 'nombre' + i.to_s
        @posX = params[tmp_pos_x]
        @posY = params[tmp_pos_y]
        @nombre = tmp_nombre
        puts @nombre
        puts @posX
        puts @posY

        @orientacion = params[tmp_orientacion]
        @tablero.addAuto(@posX, @posY, @orientacion,@nombre)
    end 
    erb :tablero
end

post '/cantAutos' do
    $cantidad_de_autos = params[:autos]
    redirect "/"
end
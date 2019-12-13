require 'sinatra'

$cantidad_de_autos = 1


get '/' do
    @cantidad_de_autos = $cantidad_de_autos
    erb :main
end

post '/tablero' do
    @cantAutos=params[:cantAutos]
    @size=params[:sizes].to_i

    erb :tablero
end

post '/cantAutos' do
    $cantidad_de_autos = params[:autos]
    redirect "/"
end
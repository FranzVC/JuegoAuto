require 'sinatra'

get '/' do
    erb :formulario
end

post '/datos' do
    @ancho=params[:ancho]
    @alto=params[:alto]
    @posIniX=params[:posIniX]
    @posIniY=params[:posIniY]
    erb :datos
end

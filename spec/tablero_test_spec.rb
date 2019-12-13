require "Tablero.rb"
RSpec.describe Tablero do
    it 'deberia devolver 3 para 3' do
        tablero=Tablero.new
        expect(tablero.getDimX()). to eq 3
    end

    it 'deberia devolver 3 para 3' do
        tablero=Tablero.new
        expect(tablero.getDimY()). to eq 3
    end
    
end
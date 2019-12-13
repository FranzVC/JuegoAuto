require "Auto.rb"
RSpec.describe Auto do
    it 'deberia devolver 1 para 1' do
        auto=Auto.new
        expect(auto.getPosX()). to eq 1
    end

    it 'deberia devolver 1 para 1' do
        auto=Auto.new
        expect(auto.getPosY()). to eq 1
    end

    it 'deberia devolver S para S ' do
        auto=Auto.new
        expect(auto.getOrientacion()). to eq ("S")
    end


    it 'deberia devolver O para I' do
        auto=Auto.new
        expect(auto.cambiarOrientacion('I')). to eq ("E")
    end

    it 'deberia devolver 2 en Y para A' do
        auto=Auto.new
        auto.avanzar()
        expect(auto.getPosY()). to eq 2
    end

    
end
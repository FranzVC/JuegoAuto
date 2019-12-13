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


    it 'deberia devolver E para I' do
        auto=Auto.new
        expect(auto.cambiarOrientacion('I')). to eq ("E")
    end

    it 'deberia devolver O para D' do
        auto=Auto.new
        expect(auto.cambiarOrientacion('D')). to eq ("O")
    end


    it 'deberia devolver 3 en Y para A' do
        auto=Auto.new
        auto.avanzar()
        expect(auto.avanzar()). to eq 3
    end

    it 'deberia devolver 3 en X para A' do
        auto=Auto.new
        auto.avanzar()
        expect(auto.avanzar()). to eq 3
    end

    it 'deberia devolver S para D' do
        auto=Auto.new
        auto.setOrientacion('E')
        expect(auto.cambiarOrientacion('D')). to eq("S")
    end

    it 'deberia devolver N para I' do
        auto=Auto.new
        auto.setOrientacion('E')
        expect(auto.cambiarOrientacion('I')). to eq("N")
    end

    it 'deberia devolver O para I' do
        auto=Auto.new
        auto.setOrientacion('N')
        expect(auto.cambiarOrientacion('I')). to eq("O")
    end

    it 'deberia devolver E para D' do
        auto=Auto.new
        auto.setOrientacion('N')
        expect(auto.cambiarOrientacion('D')). to eq("E")
    end

    

    it 'deberia devolver S para I' do
        auto=Auto.new
        auto.setOrientacion('O')
        expect(auto.cambiarOrientacion('I')). to eq("S")
    end

    it 'deberia devolver N para D' do
        auto=Auto.new
        auto.setOrientacion('O')
        expect(auto.cambiarOrientacion('D')). to eq("N")
    end



    
end
Given("visito la pagina principal") do
 visit '/'
end

Given("ingreso ancho {string} en el campo {string}") do |valor, campo|
 fill_in(campo, :with => valor)
end

When("presiono el boton {string}") do |boton|
 click_button(boton)
end

Then("deberia ver {string}") do |ancho|
 last_response.body.should =~ /#{ancho}/m
end

Then("deberia visitar la pagina de resultado") do
    visit'/datos'
end


Given("ingreso alto {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
end
  
Then("deberia ver  {string}") do |string|
 last_response.body.should =~ /#{string}/m
end


Given("ingreso posicion inicial {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
end

Given("visito la pagina resultado") do
    visit '/datos'
   end

Then("deberia ver una tabla {string} de {int} por {int}") do |string, int, int2|
    tam = int*int2
    for i in (1..tam) do
        last_response.body.should =~ /#{"#"}/m
    end
end

Given("visito la pagina tablero") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given("ingrese instrucciones {string} en el campo {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("deberia mostrar {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
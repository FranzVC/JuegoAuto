Given("visito la pagina principal") do
  visit '/'
  end
  
  Given("ingreso cantidad de autos {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
  end
  
  When("presiono el boton {string}") do |boton|
    click_button(boton)
  end
  
  Then("deberia ver  {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end



  Given("ingreso nombre {string} en el campo {string}") do |valor, campo|
   fill_in(campo, :with => valor)
  end
  
  Given("ingreso pos X {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
  end
  
  Given("ingreso pos Y {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
  end
  
  Then("deberia visitar pagina formulario") do
    visit 'datos'
  end
  
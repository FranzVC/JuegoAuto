Given("visito la pagina principal") do
  visit '/'
  end

  Then("deberia visitar el tablero") do 
    visit '/tablero'
  end
  
  Given("ingreso cantidad de autos {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
  end
  
  When("presiono el boton {string}") do |boton|
    click_button(boton)
  end
  
  Then("deberia ver mas formularios") do
    visit '/', :post, "field_name=value"
  end

  Given("ingreso {string} en el campo {string}") do |valor ,campo|
    fill_in(campo, :with => valor)
  end
  

  Then("deberia {string}") do |string|
    visitar '/formulario'
  end
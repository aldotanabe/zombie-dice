#Home
Given(/^voy a la página de inicio$/) do
  visit '/'
end

Then(/^veo el link "(.*?)"$/) do |arg1|
  last_response.should have_xpath("//a[@class=\"empezar\"]")
end


Given(/^voy a la página del juego$/) do
  visit '/juego'
end

Then(/^veo el boton "(.*?)"$/) do |boton|
  last_response.should have_xpath("//input[@value=\"#{boton}\"]")
end

Then(/^tengo 3 vidas$/) do
  #last_response.should have_xpath("//dd[@class=\"vidas\"]") do |dd|
  	#dd.should has_content "3"
  #end
  last_response.body.should =~ /3 vidas/m 
end

Then(/^tengo 0 cerebros$/) do
  last_response.body.should =~ /0 cerebros/m 
end

When(/^doy click en "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^el resultado se muestra$/) do
  last_response.should have_xpath("//div[@class=\"resultado\"]")
end

Then(/^veo un ícono asociado al resultado$/) do
  last_response.should have_xpath("//img[@class=\"icono\"]")
end



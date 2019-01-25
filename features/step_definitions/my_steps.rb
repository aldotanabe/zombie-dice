#Home

Given(/^voy a la página del juego$/) do
  visit '/'
end

Then(/^veo el boton "(.*?)"$/) do |boton|
  last_response.should have_xpath("//input[@value=\"#{boton}\"]")
end


When(/^doy click en "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^el resultado se muestra$/) do
  #last_response.should have_xpath( "//span[@class=\"valor\"]") do |span|
  #  span.text.should be != "0"
  #end
  last_response.should have_xpath("//span[@class=\"valor\"]")
end


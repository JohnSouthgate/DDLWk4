#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


add <-function (x,y) {x + y}
sub <-function (x,y) {x - y}
mul <-function (x,y) {x * y}
div <-function (x,y) {x / y}

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
	output$Operation <- renderText({
		input$goButton
		isolate(paste(input$operand1, input$operator, input$operand2))
		
	
	})
	
	output$Result <- renderText({
		input$goButton
		isolate(switch (input$operator, 
				"+"  = add(input$operand1,  input$operand2)
				,"-" = sub(input$operand1,  input$operand2)
				,"*" = mul(input$operand1,  input$operand2)
				,"/" = div(input$operand1,  input$operand2)
				))
		
		})
	

})




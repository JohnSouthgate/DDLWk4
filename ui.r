
## Title: Mathematics

# A simple calculator in Shiny 
## Simulations
# 
library(shiny)
# require(devtools)
# install_github('rCharts', 'ramnathv')
#library(rCharts)
# Warning message:
# Username parameter is deprecated. Please use ramnathv/rCharts 

#
# ### Set up the simulation parameters and produce the comparison dataset
# 
#setwd("C:/Users/go2/_my/__CourseraDataSci/Assignments/DDP Week 4")

sim.choices=c('+','-','*','/')

shinyUI(pageWithSidebar(
	headerPanel("Slide Rulz - A calculator for children aged 5-6"),
	sidebarPanel(
		p("Just Addition, Subtraction, Multiplication and Division"),
		sliderInput("operand1",
					"Operand 1 ",
					min = 1,
					max = 10,
					value = 5),
		selectInput(inputId="operator", label="Operation", choices=sim.choices,
					multiple = FALSE,selected="+"),
		sliderInput("operand2",
					"Operand 2 ",
					min = 1,
					max = 10,
					value = 5),

		actionButton("goButton", "Equals"),
		br(),br(),
		p(strong(em("Github repository:",a("Developing Data Products - Project Week 4",href="https://github.com/JohnSouthgate/DevelopingDataProductsWk4"))))
	),
	mainPanel(
		tabsetPanel(
			tabPanel('Arithmetic',
					 br(),br(),
					 p("The Operation is"),
					 verbatimTextOutput("Operation"),
					 p("The Result is"),
					 verbatimTextOutput("Result"),
					 br(),
					 p("Wikipedia: ", a("Arithmentic", href = "https://en.wikipedia.org/wiki/Arithmetic")),
					 p("Voila !")
			)
		)
	)
)
)

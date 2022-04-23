#### You have to install the plots package in order to plot graphs! 
#### To do so, you need to open Julia terminal (REPL) by going to your terminal and executing the path to Julia (or just open the program installed)

#### julia> using Pkg
#### julia> Pkg.add("Plots")

#### This procedure installs the package Plots! 

#### Examples taken from: https://docs.juliaplots.org/latest/tutorial/

#### If you are using vsCode and get the error 
# Error loading webview: Error: Could not register service workers: InvalidStateError: Failed to register a ServiceWorker: 
# The document is in an invalid state..
# Just close vcCode (for real, kill the task or force quit) and it should be solved!


using Plots
x = 1:10; y = rand(10); # These are the plotting data
plot(x, y)

x = 1:10; y = rand(10, 2) # 2 columns means two lines
plot(x, y)

# The plot! command mutates de plot objetc and allows to plot more lines
z = rand(10)
plot!(x, z)

# You can also add atributes to your plots, check https://docs.juliaplots.org/latest/attributes/#attributes!
x = 1:10; y = rand(10, 2) # 2 columns means two lines
plot(x, y, title = "Two Lines", label = ["Line 1" "Line 2"], lw = 3)

# The Plots package is actually a metapackage, which means it onlys receives the commands and generates the plots using another plot library
# You can change which plot library you want to use! First you have to install another package (Pkg.add("BackendPackage") on REPL)

x = 1:10; y = rand(10, 2) # 2 columns means two lines
plotlyjs() # Set the backend to Plotly
# This plots into the web browser via Plotly
plot(x, y, title = "This is Plotted using Plotly")

gr() # Set the backend to GR
# This plots using GR
plot(x, y, title = "This is Plotted using GR")


# To save yout plots
savefig("myplot.png") # Saves the CURRENT_PLOT as a .png
savefig(p, "myplot.pdf") # Saves the plot from p as a .pdf vector graphic


using Plots
using DelimitedFiles
#using REPL

data = readdlm("kpoint.txt")

num_basis = div(length(data[1, :]) - 2, 2)

println("Number of basis: ", num_basis)

plot()  # Create an empty plot


for i in 1:num_basis
  plot!(data[:, 2], data[:, i + 2], linecolor = :royalblue, linewidth = 1.2, label = "")
  plot!(data[:, 2], data[:, num_basis + i + 2], linecolor = :royalblue, linestyle = :dash, linewidth = 0.7, label = "")
end
display(plot!())  # Display the plot
println("Press Enter to finish...")
readline()
#sleep(5)

# Small script to visualize loaded MATLAB data

using Plots
pyplot()

include("reading_data.jl")

# Load data using reading_data script
vir, qm = load_EMPS_data()

# Visualize data
plot(vir, label="vir")
xlabel!("time (t)")
ylabel!("vector of motor force")
title!("Motor force over time")

plot(qm, label="qm")
xlabel!("time (t)")
ylabel!("vector of motor position")
title!("Motor position over time")

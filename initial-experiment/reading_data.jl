# Small script to read MATLAB data into Julia
using MAT
using Plots
pyplot()

# Open
file = matopen("./data/DATA_EMPS.mat")
vir = read(file, "vir")
qm = read(file, "qm")
close(file)

# Visualize data
plot(vir, label="vir")
xlabel!("time (t)")
ylabel!("vector of motor force")
title!("Motor force over time")

plot(qm, label="qm")
xlabel!("time (t)")
ylabel!("vector of motor position")
title!("Motor position over time")

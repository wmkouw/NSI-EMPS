# Small script to read MATLAB data into Julia

using MAT

function load_EMPS_data()
	"Load from EMPS.mat files"

	# Open file
	file = matopen("./data/DATA_EMPS.mat")

	# Extract input-output signals
	vir = read(file, "vir")
	qm = read(file, "qm")

	# gc
	close(file)

	return vir, qm
end

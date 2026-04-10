import numpy as np
import matplotlib.pyplot as plt
data = np.fromfile("build/grid_point_field.dat", dtype="float32")[1:-1].reshape((160,320))
#plt.imshow(data)
plt.savefig("plot.png", bbox_inches="tight")


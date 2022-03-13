import numpy as np
from raytracing import *

def run():
    img = np.zeros((h, w, 3))
    # Loop through all pixels.

    Q = np.array([[np.array([x, y, 0.]) for x in np.linspace(-1, 1, w)] for y in np.linspace(-1, 1, h)])
    D = Q - O
    D /= np.linalg.norm(D, axis=2, keepdims=True)

    for i, row in enumerate(D):
        for j, d in enumerate(row):
            img[h - j - 1, i, :] = tracer.trace_ray(O, d)
    img = np.clip(img, 0, 1)
    return img


w, h = 400, 400

# Sphere properties.
position = np.array([0., 0., 1.])
radius = 1.
color = np.array([0., 0., 1.])
diffuse = 1.
specular_c = 1.
specular_k = 50

# Light position and color.
L = np.array([5., 5., -10.])
color_light = np.ones(3)
ambient = .05

# Camera.
O = np.array([0., 0., -1.])  # Position.
Q = np.array([0., 0., 0.])  # Pointing to.

tracer = RayTracer(position, radius, L, ambient, diffuse, color, specular_c, color_light, specular_k)
#cProfile.run("run()", "cProfileRaw")

img = run()

fig, ax = plt.subplots(1, 1)
ax.imshow(img)
ax.set_axis_off()
plt.show()

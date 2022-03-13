import numpy as np
cimport numpy as np
import matplotlib.pyplot as plt
import cProfile

def normalize(float[:] x):
    cdef int i
    cdef float norm = np.linalg.norm(x)
    cdef float[:] out = np.copy(x)
    for i in range(len(x)):
        out[i] /= norm
    return out


def intersect_sphere(float[:] O, float[:] D, float[:] S,  float R):
    # Return the distance from O to the intersection
    # of the ray (O, D) with the sphere (S, R), or
    # +inf if there is no intersection.
    # O and S are 3D points, D (direction) is a
    # normalized vector, R is a scalar.
    cdef int i
    cdef float a, b, c, disc, distSqrt, q, t0, t1
    cdef float[:] OS = np.copy(O)
    a = np.dot(D, D)
    for i in range(len(O)):
        OS[i] -= S[i]
    b = 2 * np.dot(D, OS)
    c = np.dot(OS, OS) - R * R
    disc = b * b - 4 * a * c
    if disc > 0:
        distSqrt = np.sqrt(disc)
        q = (-b - distSqrt) / 2.0 if b < 0 else (-b + distSqrt) / 2.0
        t0 = q / a
        t1 = c / q
        t0, t1 = min(t0, t1), max(t0, t1)
        if t1 >= 0:
            return t1 if t0 < 0 else t0
    return np.inf

class RayTracer:
    def __init__(self, float[:] position, float radius, float[:] L, float ambient, float diffuse, float[:] color, float specular_c, float[:] color_light, float specular_k) -> None:
        self.position = position
        self.radius = radius
        self.L = L
        self.ambient = ambient
        self.diffuse = diffuse
        self.color = color
        self.specular_c = specular_c
        self.color_light = color_light
        self.specular_k = specular_k
    
    def trace_ray(self, float[:] O, float[:] D):
        # Find first point of intersection with the scene.
        cdef int i
        cdef float t, a, b, ambient
        cdef float[:] M = np.copy(O)
        cdef float[:] col = np.copy(self.color)
        cdef float[:] N, toL, toO, color_light, position
        position = self.position
        t = intersect_sphere(O, D, position, self.radius)
        # No intersection?
        if t == np.inf:
            return 0.
        # Find the point of intersection on the object.
        for i in range(len(M)):
            M[i] += D[i] * t
        
        N = np.copy(M)
        for i in range(len(N)):
            N[i] -= position[i]
        N = normalize(N)

        toL = np.copy(self.L)
        for i in range(len(toL)):
            toL[i] -= M[i]
        toL = normalize(toL)

        toO = np.copy(O)
        for i in range(len(O)):
            toO[i] -= M[i]
        toO = normalize(toO)

        toLtoO = np.copy(toL)
        for i in range(len(toLtoO)):
            toLtoO[i] += toO[i]
        toLtoO = normalize(toLtoO)

        ambient = self.ambient
        color_light = self.color_light
        a = max(np.dot(N, toL), 0.) * self.diffuse
        b = self.specular_c * max(np.dot(N, toLtoO), 0) ** self.specular_k
        for i in range(len(col)):
            # Lambert shading (diffuse).
            col[i] *= a
            # Ambient light.
            col[i] += ambient
            # Blinn-Phong shading (specular).
            col[i] += color_light[i] * b

        return col


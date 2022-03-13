import numpy as np
cimport numpy as np
import matplotlib.pyplot as plt
import cProfile

def normalize(x):
    return x / np.linalg.norm(x)


def intersect_sphere(O, D, S, float R):
    # Return the distance from O to the intersection
    # of the ray (O, D) with the sphere (S, R), or
    # +inf if there is no intersection.
    # O and S are 3D points, D (direction) is a
    # normalized vector, R is a scalar.
    cdef int i
    cdef float a, b, c, disc, distSqrt, q, t0, t1
    a = np.dot(D, D)
    OS = O - S
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
    def __init__(self, position, float radius, L, float ambient, float diffuse, color, float specular_c, color_light, float specular_k) -> None:
        self.position = position
        self.radius = radius
        self.L = L
        self.ambient = ambient
        self.diffuse = diffuse
        self.color = color
        self.specular_c = specular_c
        self.color_light = color_light
        self.specular_k = specular_k
    
    def trace_ray(self, O, D):
        cdef float t

        # Find first point of intersection with the scene.
        t = intersect_sphere(O, D, self.position, self.radius)
        # No intersection?
        if t == np.inf:
            return 0.
        # Find the point of intersection on the object.
        M = O + D * t
        N = normalize(M - self.position)
        toL = normalize(self.L - M)
        toO = normalize(O - M)

        # Ambient light.
        col = self.ambient
        # Lambert shading (diffuse).
        col += self.diffuse * max(np.dot(N, toL), 0) * self.color
        # Blinn-Phong shading (specular).
        col += self.specular_c * self.color_light * max(np.dot(N, normalize(toL + toO)), 0.) ** self.specular_k
        return col


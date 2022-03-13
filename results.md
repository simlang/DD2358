# Raw Version
## Timings
- Sizes: 100, 200, 300, 400, 500
- Mean: [0.3053176529, 1.1735100068, 2.6189196003000004, 4.486683757700001, 7.680737046799999]
- Stds: [0.022722410101413792, 0.10622469009917478, 0.12844472611358745, 0.017712468552313017, 0.5530108868502055]

## cProfile
```
         7889449 function calls (7478142 primitive calls) in 6.745 seconds

   Ordered by: cumulative time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    6.745    6.745 {built-in method builtins.exec}
        1    0.000    0.000    6.745    6.745 <string>:1(<module>)
        1    0.391    0.391    6.745    6.745 raytracing.py:60(run)
   160000    0.670    0.000    3.715    0.000 raytracing.py:38(trace_ray)
1343496/932189    0.952    0.000    3.599    0.000 {built-in method numpy.core._multiarray_umath.implement_array_function}
   326736    0.822    0.000    3.222    0.000 raytracing.py:10(normalize)
   326736    0.159    0.000    2.399    0.000 <__array_function__ internals>:2(norm)
   326736    0.984    0.000    2.027    0.000 linalg.py:2363(norm)
   160000    0.636    0.000    1.299    0.000 raytracing.py:15(intersect_sphere)
   890104    0.406    0.000    1.240    0.000 <__array_function__ internals>:2(dot)
    41684    0.026    0.000    0.975    0.000 <__array_function__ internals>:2(clip)
    41684    0.043    0.000    0.922    0.000 fromnumeric.py:2033(clip)
    41684    0.023    0.000    0.879    0.000 fromnumeric.py:52(_wrapfunc)
    41684    0.026    0.000    0.847    0.000 {method 'clip' of 'numpy.ndarray' objects}
    41684    0.092    0.000    0.820    0.000 _methods.py:106(_clip)
    83368    0.221    0.000    0.498    0.000 _methods.py:72(_clip_dep_is_scalar_nan)
   410104    0.126    0.000    0.294    0.000 _asarray.py:14(asarray)
    83769    0.042    0.000    0.277    0.000 <__array_function__ internals>:2(ndim)
   326736    0.197    0.000    0.197    0.000 {method 'ravel' of 'numpy.ndarray' objects}
    83769    0.098    0.000    0.193    0.000 fromnumeric.py:3075(ndim)
    41684    0.174    0.000    0.174    0.000 _methods.py:87(_clip_dep_invoke_with_casting)
   410906    0.169    0.000    0.169    0.000 {built-in method numpy.array}
   326736    0.077    0.000    0.114    0.000 linalg.py:112(isComplexType)
   890104    0.107    0.000    0.107    0.000 multiarray.py:706(dot)
   653472    0.079    0.000    0.079    0.000 {built-in method builtins.issubclass}
   125052    0.057    0.000    0.057    0.000 {built-in method builtins.max}
    83368    0.042    0.000    0.056    0.000 _methods.py:82(_clip_dep_is_byte_swapped)
   326736    0.042    0.000    0.042    0.000 linalg.py:2359(_norm_dispatcher)
      401    0.001    0.000    0.027    0.000 <__array_function__ internals>:2(linspace)
      401    0.009    0.000    0.026    0.000 function_base.py:23(linspace)
    41684    0.018    0.000    0.018    0.000 {built-in method builtins.min}
    83769    0.015    0.000    0.015    0.000 {built-in method builtins.isinstance}
    83769    0.012    0.000    0.012    0.000 fromnumeric.py:3071(_ndim_dispatcher)
    42085    0.010    0.000    0.010    0.000 {built-in method builtins.getattr}
      401    0.000    0.000    0.009    0.000 <__array_function__ internals>:2(any)
      401    0.001    0.000    0.007    0.000 fromnumeric.py:2249(any)
      401    0.002    0.000    0.007    0.000 fromnumeric.py:70(_wrapreduction)
    41684    0.006    0.000    0.006    0.000 fromnumeric.py:2029(_clip_dispatcher)
      401    0.001    0.000    0.004    0.000 {method 'any' of 'numpy.generic' objects}
      401    0.000    0.000    0.003    0.000 _methods.py:53(_any)
      401    0.003    0.000    0.003    0.000 {method 'reduce' of 'numpy.ufunc' objects}
      401    0.000    0.000    0.002    0.000 <__array_function__ internals>:2(result_type)
      802    0.000    0.000    0.002    0.000 _asarray.py:86(asanyarray)
      401    0.001    0.000    0.001    0.000 {built-in method numpy.arange}
      401    0.001    0.000    0.001    0.000 {method 'astype' of 'numpy.ndarray' objects}
      401    0.001    0.000    0.001    0.000 {method 'reshape' of 'numpy.ndarray' objects}
      401    0.000    0.000    0.001    0.000 numeric.py:1816(isscalar)
      401    0.000    0.000    0.000    0.000 fromnumeric.py:71(<dictcomp>)
      401    0.000    0.000    0.000    0.000 {built-in method _operator.index}
      401    0.000    0.000    0.000    0.000 {method 'items' of 'dict' objects}
      401    0.000    0.000    0.000    0.000 function_base.py:18(_linspace_dispatcher)
      401    0.000    0.000    0.000    0.000 fromnumeric.py:2245(_any_dispatcher)
      401    0.000    0.000    0.000    0.000 multiarray.py:634(result_type)
        1    0.000    0.000    0.000    0.000 {built-in method numpy.zeros}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
```

## line_profiler
### run
```
Timer unit: 1e-06 s

Total time: 9.48957 s
File: raytracing.py
Function: run at line 52

Line #      Hits         Time  Per Hit   % Time  Line Contents
==============================================================
    52                                           @profile
    53                                           def run():
    54         1         13.0     13.0      0.0      img = np.zeros((h, w, 3))
    55                                               # Loop through all pixels.
    56       401        442.0      1.1      0.0      for i, x in enumerate(np.linspace(-1, 1, w)):
    57    160400     136745.0      0.9      1.4          for j, y in enumerate(np.linspace(-1, 1, h)):
    58                                                       # Position of the pixel.
    59    160000     114873.0      0.7      1.2              Q[0], Q[1] = x, y
    60                                                       # Direction of the ray going through
    61                                                       # the optical center.
    62    160000    2609934.0     16.3     27.5              D = normalize(Q - O)
    63                                                       # Launch the ray and get the color
    64                                                       # of the pixel.
    65    160000    5149671.0     32.2     54.3              col = trace_ray(O, D)
    66    160000      83553.0      0.5      0.9              if col is None:
    67    118316      44385.0      0.4      0.5                  continue
    68     41684    1349950.0     32.4     14.2              img[h - j - 1, i, :] = np.clip(col, 0, 1)
    69         1          0.0      0.0      0.0      return img
```
### trace_ray
```
Timer unit: 1e-06 s

Total time: 7.66618 s
File: raytracing.py
Function: trace_ray at line 37

Line #      Hits         Time  Per Hit   % Time  Line Contents
==============================================================
    37                                           @profile
    38                                           def trace_ray(O, D):
    39                                               # Find first point of intersection with the scene.
    40    160000    2745502.0     17.2     35.8      t = intersect_sphere(O, D, position, radius)
    41                                               # No intersection?
    42    160000     139227.0      0.9      1.8      if t == np.inf:
    43    118316      58490.0      0.5      0.8          return
    44                                               # Find the point of intersection on the object.
    45     41684     165926.0      4.0      2.2      M = O + D * t
    46     41684     945986.0     22.7     12.3      N = normalize(M - position)
    47     41684     891585.0     21.4     11.6      toL = normalize(L - M)
    48     41684     865891.0     20.8     11.3      toO = normalize(O - M)
    49                                               # Ambient light.
    50     41684      27537.0      0.7      0.4      col = ambient
    51                                               # Lambert shading (diffuse).
    52     41684     388723.0      9.3      5.1      col += diffuse * max(np.dot(N, toL), 0) * color
    53                                               # Blinn-Phong shading (specular).
    54     83368     275454.0      3.3      3.6      col += specular_c * color_light * \
    55     83368    1109690.0     13.3     14.5          max(np.dot(N, normalize(toL + toO)), 0) \
    56     41684      28943.0      0.7      0.4          ** specular_k
    57     41684      23223.0      0.6      0.3      return col
```

### intersect_sphere
```
Timer unit: 1e-06 s

Total time: 3.51734 s
File: raytracing.py
Function: intersect_sphere at line 14

Line #      Hits         Time  Per Hit   % Time  Line Contents
==============================================================
    14                                           @profile
    15                                           def intersect_sphere(O, D, S, R):
    16                                               # Return the distance from O to the intersection
    17                                               # of the ray (O, D) with the sphere (S, R), or
    18                                               # +inf if there is no intersection.
    19                                               # O and S are 3D points, D (direction) is a
    20                                               # normalized vector, R is a scalar.
    21    160000     745249.0      4.7     21.2      a = np.dot(D, D)
    22    160000     302330.0      1.9      8.6      OS = O - S
    23    160000     727591.0      4.5     20.7      b = 2 * np.dot(D, OS)
    24    160000     672037.0      4.2     19.1      c = np.dot(OS, OS) - R * R
    25    160000     262189.0      1.6      7.5      disc = b * b - 4 * a * c
    26    160000     182776.0      1.1      5.2      if disc > 0:
    27     41684     164314.0      3.9      4.7          distSqrt = np.sqrt(disc)
    28     83368     120481.0      1.4      3.4          q = (-b - distSqrt) / 2.0 if b < 0 \
    29                                                       else (-b + distSqrt) / 2.0
    30     41684      32477.0      0.8      0.9          t0 = q / a
    31     41684      33618.0      0.8      1.0          t1 = c / q
    32     41684      80329.0      1.9      2.3          t0, t1 = min(t0, t1), max(t0, t1)
    33     41684      48756.0      1.2      1.4          if t1 >= 0:
    34     41684      43862.0      1.1      1.2              return t1 if t0 < 0 else t0
    35    118316     101331.0      0.9      2.9      return np.inf

```

## memory_profiler
### run
```
Filename: raytracing.py

Line #    Mem usage    Increment  Occurrences   Line Contents
=============================================================
    52   74.789 MiB   74.789 MiB           1   @profile
    53                                         def run():
    54   74.789 MiB    0.000 MiB           1       img = np.zeros((h, w, 3))
    55                                             # Loop through all pixels.
    56   74.820 MiB    0.004 MiB         101       for i, x in enumerate(np.linspace(-1, 1, w)):
    57   74.820 MiB    0.000 MiB       10100           for j, y in enumerate(np.linspace(-1, 1, h)):
    58                                                     # Position of the pixel.
    59   74.820 MiB    0.000 MiB       10000               Q[0], Q[1] = x, y
    60                                                     # Direction of the ray going through
    61                                                     # the optical center.
    62   74.820 MiB    0.016 MiB       10000               D = normalize(Q - O)
    63                                                     # Launch the ray and get the color
    64                                                     # of the pixel.
    65   74.820 MiB    0.000 MiB       10000               col = trace_ray(O, D)
    66   74.820 MiB    0.000 MiB       10000               if col is None:
    67   74.820 MiB    0.000 MiB        7424                   continue
    68   74.820 MiB    0.012 MiB        2576               img[h - j - 1, i, :] = np.clip(col, 0, 1)
    69   74.820 MiB    0.000 MiB           1       return img
```
### trace_ray
```
Filename: raytracing.py

Line #    Mem usage    Increment  Occurrences   Line Contents
=============================================================
    37   74.797 MiB   74.797 MiB       10000   @profile
    38                                         def trace_ray(O, D):
    39                                             # Find first point of intersection with the scene.
    40   74.797 MiB    0.000 MiB       10000       t = intersect_sphere(O, D, position, radius)
    41                                             # No intersection?
    42   74.797 MiB    0.000 MiB       10000       if t == np.inf:
    43   74.797 MiB    0.000 MiB        7424           return
    44                                             # Find the point of intersection on the object.
    45   74.797 MiB    0.000 MiB        2576       M = O + D * t
    46   74.797 MiB    0.000 MiB        2576       N = normalize(M - position)
    47   74.797 MiB    0.000 MiB        2576       toL = normalize(L - M)
    48   74.797 MiB    0.000 MiB        2576       toO = normalize(O - M)
    49                                             # Ambient light.
    50   74.797 MiB    0.000 MiB        2576       col = ambient
    51                                             # Lambert shading (diffuse).
    52   74.797 MiB    0.000 MiB        2576       col += diffuse * max(np.dot(N, toL), 0) * color
    53                                             # Blinn-Phong shading (specular).
    54   74.797 MiB    0.000 MiB        5152       col += specular_c * color_light * \
    55   74.797 MiB    0.000 MiB        5152           max(np.dot(N, normalize(toL + toO)), 0) \
    56   74.797 MiB    0.000 MiB        2576           ** specular_k
    57   74.797 MiB    0.000 MiB        2576       return col
```

### intersect_sphere

```
Filename: raytracing.py

Line #    Mem usage    Increment  Occurrences   Line Contents
=============================================================
    14   74.664 MiB   74.660 MiB       10000   @profile
    15                                         def intersect_sphere(O, D, S, R):
    16                                             # Return the distance from O to the intersection
    17                                             # of the ray (O, D) with the sphere (S, R), or
    18                                             # +inf if there is no intersection.
    19                                             # O and S are 3D points, D (direction) is a
    20                                             # normalized vector, R is a scalar.
    21   74.664 MiB    0.000 MiB       10000       a = np.dot(D, D)
    22   74.664 MiB    0.000 MiB       10000       OS = O - S
    23   74.664 MiB    0.000 MiB       10000       b = 2 * np.dot(D, OS)
    24   74.664 MiB    0.000 MiB       10000       c = np.dot(OS, OS) - R * R
    25   74.664 MiB    0.000 MiB       10000       disc = b * b - 4 * a * c
    26   74.664 MiB    0.000 MiB       10000       if disc > 0:
    27   74.664 MiB    0.000 MiB        2576           distSqrt = np.sqrt(disc)
    28   74.664 MiB    0.000 MiB        5152           q = (-b - distSqrt) / 2.0 if b < 0 \
    29                                                     else (-b + distSqrt) / 2.0
    30   74.664 MiB    0.000 MiB        2576           t0 = q / a
    31   74.664 MiB    0.000 MiB        2576           t1 = c / q
    32   74.664 MiB    0.000 MiB        2576           t0, t1 = min(t0, t1), max(t0, t1)
    33   74.664 MiB    0.000 MiB        2576           if t1 >= 0:
    34   74.664 MiB    0.000 MiB        2576               return t1 if t0 < 0 else t0
    35   74.664 MiB    0.004 MiB        7424       return np.inf
```

### normalize
```
Filename: raytracing.py

Line #    Mem usage    Increment  Occurrences   Line Contents
=============================================================
     5   74.820 MiB   74.801 MiB       20304   @profile
     6                                         def normalize(x):
     7   74.820 MiB    0.020 MiB       20304       x /= np.linalg.norm(x)
     8   74.820 MiB    0.000 MiB       20304       return x
```
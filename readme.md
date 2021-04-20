`matrices-correlation-invalid` - Collection of invalid correlation matrices
==========

About
-----

`matrices-correlation-invalid` is a collection of MATLAB functions that
generate invalid correlation matrices: matrices that 
are intended to be correlation matrices but for various reasons 
relating to their construction
have a negative eigenvalue and so are not positive semidefinite.
The matrices are taken from the
literature and from applications.  They are used in

N. J. Higham and N. Strabić, "[Bounds for the Distance to the Nearest
Correlation Matrix](https://doi.org/10.1137/15M1052007)", 
SIAM J. Matrix Anal. Appl., 37(3): 1088-1102, 2016, 

and

N. J. Higham and N. Strabić, "[Anderson Acceleration of the Alternating
Projections Method for Computing the Nearest Correlation
Matrix](https://doi.org/10.1007/s11075-015-0078-3)", 
Numer. Algorithms, 72(4):1021-1042, 2016.

The matrices are

* `bccd16`: 3250-by-3250 matrix from EU bank data.

* `beyu11`: 12-by-12 matrix based on tetrachoric estimates.

* `bhwi01`: 5-by-5 matrix relating to portfolio risk.

* `cor1399`: 1399-by-1399 matrix constructed from stock data.

* `cor3120`: 3120-by-3120 matrix constructed from stock data.

* `fing97`: 7-by-7 matrix from stress testing.

* `high02`: 3-by-3 matrix.

* `mmb13`: 6-by-6 matrix from foreign exchange
trading data supplied by the Royal Bank of Scotland.

* `tec03`: 4-by-4 matrix from stress testing.

* `tyda99r1`, `tyda99r2`, and `tyda99r3`: 8-by-8 matrices from resource
allocation modeling.

* `usgs13`: 94-by-94 from national assessment of carbon dioxide storage
resources in the USA.

Other M-files:

* `test`: test function that generates the matrices and prints the
dimension and smallest eigenvalue of each matrix.  Run this to make
sure that the collection is properly installed.

* `treshape`: a utility function for converting vectors to triangular
  matrices and vice versa.  This is taken from the
  [Matrix Computation Toolbox](http://www.ma.man.ac.uk/~higham/mctoolbox).
  
* `am_properties.m`: lists properties of the matrices and is intended
  for use when this collection is integrated as a group in the
  [Anymatrix](https://github.com/mmikaitis/anymatrix) collection.


Anymatrix Integration
-----

This collection is ready to include as a group in the [Anymatrix](https://github.com/mmikaitis/anymatrix) collection,
for which the name `matcorinv` should be used.


Requirements
-------------

The codes have been developed under MATLAB 2015b and 2016a.

License
-------

See `license.txt` for licensing information.

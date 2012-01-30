Example of Automatic Testing (with BDD) for evolutionary algorithms
===================================================================

Motivation
----------

Automatic tests are very useful tools to detect errors in the source code. 
In the software for research that problem is even more important, because the results must be
reproducible. 

There are non-deterministic problem, like evolutionary algorithms [1], are difficult to 
test. Also, they should use specification of testing that could be revised by a researcher without
knowledge of internal aspects of the implementation. 

Behaviour Driven Development, proposed by Dan North, [2] is a new technique that propose a new 
way to design the tests. Using this focus, and technique like Cucumber (for Ruby), JBehave (Java), 
or Lettuce (python), we can test the algorithms testing its behaviour in a more readable way. 

This code is a simple example of using a Behaviour Driven Development to test a simple 
evolutionary algorithm (an steady-state genetic algorithm), in Python and using the [lettuce][], 
because unfortunately, the majority of implementations we have seen have no test at all. 

This example will be part of a more extended work of the application of BDD in evolutionary algorithms. 

Structure
---------

- setup.py configuration of the program.

- ssga.py implementation of the steady-state algorithm. 

- cutils.py implementation of the methods in cython (most expensive methods in runtime).

- utils.py initial implementation of utils.py methods in python.

- tests/ Directory with the tests (using the syntax of lettuce, but it should also work with other
	 BDD tools.

Requirements
------------

- package cython, it is used for performance reasons. 

- lettuce library [lettuce][available here]. 

Usage
-----

- For testing: ./test

It compiles, it is required, and applied all the testing.

- For compile:  ./compile

It compiles the program (using the package cython). 

License
-------

Copyright 2011-2012 by Daniel Molina (daniel.molina@uca.es). Released under GPLv3 License (see LICENSE.txt file for details).


Bibliography
------------

[1] Bäck T, Fogel DB, Michalewicz Z eds. Handbook of Evolutionary Computation. Bristol, UK: IOP Publishing Ltd. 1997.

[2] Chelimsky D, Astels D, Dennis Z, et al. The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends. Pragmatic Bookshelf. 2010.

[lettuce]: http://lettuce.it "Lettuce"

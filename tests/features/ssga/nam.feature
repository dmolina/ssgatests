Feature: SSGA NNAM
    In order to test the NAM selection we check that 
    the two parents are not the same one, and that the distances 
    between the first parent and the second parent are right.

    Scenario: NAM selects different parents 
	Given I have an SSGA algorithm for dimension 10
	Given I init the population with <popsize> individuals
	When I select the parents with tournament size <tournament_size>
	the parents are different after <numruns> tests

    Examples:
	| popsize | tournament_size | numruns |
	|     50  |  3              | 300     |
	|      3  |  2              | 300     |
	|      2  |  1              |   2     |


    Scenario: NAM Select the farest away parent
	Given I have an SSGA algorithm for dimension 10 
	Given I init the population with 50 individuals
	When I select the parents with tournament size 49
	Then the distance between parents is the longest

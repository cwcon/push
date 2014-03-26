---
title: Using a Wilcoxon-test based partial order for selection in
evolutionary algorithms with noisy fitness
summary: >
	This paper explain the concept of an evolutionary algorithm
	selection mechanism that is based in using a Wilcoxon test to
	impose a partial order on the population of solutions. These
	solutions will need to have a memory of past evaluations.
	This solution has been tested against other average-based ones
	giving the best results, although they need an order of magnitude
	more time to obtain these result. 
authors:
  -name: JJ Merelo
   affiliation: University of Granada
   github_username: JJ
   bio: >
          JJ Merelo is professor at the university of Granada and
		  director of the Free Software Office at that university. 

#Repeat fragment above for multi-author articles
# -name:
# affiliation:
# github_username:
# bio: >
#      Bio starts here...

# Status: draft, submission, revision, copyedit, published
status: draft

# For publication-stage use:
issue: 00
layout: article
---

# Using a Wilcoxon-test based partial order for selection in evolutionary algorithms with noisy fitness

## Introduction

Evolutionary algorithms are stochastic optimization methods inspired
in evolution. They search for solution to a problem by creating a
population of possible solutions, which are then *evolved* according
to their *fitness*, that is, their ability to solve the problem. 

In some cases this fitness is *noisy*, be it because [solutions are evaluated in a
noisy environment ](http://geneura.wordpress.com/2013/06/21/unreal-expert-bots-at-iwann-2013/)
or because
[they have, themselves, a random component](http://geneura.wordpress.com/2012/10/08/genebot-again-in-cig2012/). One
can deal with noise by just disregarding it and using fitness as
obtained (which, with sufficiently big populations, is enough)[^noisy]
or using average or other statistical central tendency
measure. However, the first might not work for small populations and
the second might either not exist (if the fitness does not follow a
normal tendency) or simply there might not be enough statistical
difference to affirm that, for two statistical variables that
represent fitness, one is better than the other.

In this version of an evolutionary algorithm applied to EAs with noisy
fitness, we will not use central tendencies to give a single figure
for fitness; we will compare individuals by using
[the non-parametric Wilcoxon rank-sum test](http://en.wikipedia.org/wiki/Wilcoxon_rank-sum),
so that there is no dependence on the shape of noise and, besides,
creating a partial order that will accept one individual having a
better fitness than another only if it is statistically significant.

## Method description

Our main objective in this work was to implement this type of
selection by adding as little code as possible to the pre-existing
[evolutionary algorithm library `Algorithm::Evolutionary`](http://search.cpan.org/dist/Algorithm-Evolutionary/). We
added two different features to this library

* A *memory* that keeps every fitness value an individual has
  received. Fitness is then an array, and a new value is added at the
  beginning of each generation. This means that different individuals
  with have a different memory *size*, as shown in
  [this 3D plot](http://jj.github.io/Algorithm-Evolutionary/graphs/memory/),
  that shows the evolution of the histogram of memory size with the
  number of generations in a typical run with 1024 individuals. Every
  individual is evaluated 6 times before the first generation,
  accounting for the big peak; these individuals are progressively
  eliminated as new ones enter the population; there is always a
  *ridge* that indicates new individuals (memory size == 1 ). In the
  last generation there are individuals with many different memory
  sizes. 
  
  * A way of incorporating the partial order into the population, with
    minimum disruption as indicated, which is done this way: every
    individual is compared a variable but fixed number of
    individuals. If their difference is statistically significant (*p*
    value < 0.05), the
    winner receives 1 point and the loser -1. The initial fitness
    value is the number of comparisons, so that if an individual
    always wins it will have 2*comparisons as fitness, while the
    absolute loser will have 0. In
    [this 3D graph](http://jj.github.io/Algorithm-Evolutionary/graphs/fitness-histo/)
    the distribution of fitness values along time is shown, with
    height representing the number of individuals with a particular fitness. The high
    *ridge* in its middle is the block of individuals with
    *comparisons* fitness, that is, either not statistically different
    with the individuals it has been compared or better than as many
    individuals as it is worse. At any rate, there are a few
    individuals that have the maximum fitness and the situation is
    similar during all evolution, giving the evolutionary process
    enough fitness differences to proceed towards the individuals with
    a higher fitness. 

## A bit of code

The essential part of the code is contained in
[this program, `noisy-trap-memory-wilcoxon.pl`](noisy-trap-memory-wilcoxon-data.pl)
which uses the
[current version of `Algorithm::Evolutionary`](http://github.com/JJ/Algorithm-Evolutionary). It
will have to be installed and available to be used. Additional
libraries for statistics will have to be included too. 

{% highlight perl %}
  for my $p ( @pop ) {
	push(@{$p->{'_fitness_memory'}}, $noisy->apply( $p ));
	$p->Fitness($comparisons);
  }
  
  for my $i (1..$comparisons) {
    my @copy_of_population = @pop;
    while( @copy_of_population ) {
	my $first = splice( @copy_of_population, rand( @copy_of_population ), 1 );
	my $second = splice( @copy_of_population, rand( @copy_of_population ), 1 );
	my $aov = Statistics::ANOVA->new();
	$aov->load_data( { 1 => $first->{'_fitness_memory'}, 2 => $second->{'_fitness_memory'} });
	my $test_value = $aov->compare(independent => 1, parametric => 0, flag => 1, alpha => .05, dump => 0); # Wilcoxon (between-groups) sum-of-ranks (Dwass Procedure)
	if ( $test_value->{'1,2'}{'p_value'} < 0.05 ) {
	  if ( $test_value->{'1,2'}{'z_value'} < 0 ) {
	    $first->Fitness( $first->Fitness( ) + 1);
	    $second->Fitness( $second->Fitness( ) - 1);
	  } else {
	    $first->Fitness( $first->Fitness( ) - 1);
	    $second->Fitness( $second->Fitness( ) + 1);
	  }
	}
 }
 
 {% endhighlight %}
 
 This chunk of code, which would be included in the evolutionary
 algorithm loop before the code that actually performs the
 evolutionary algorithm (reproduction with mutation and crossover and
 elimination of the less fit individuals) has two parts. In the first
 part, the fitness of every individual is evaluated and added to the
 memory. 
 
 In the second part, the population is paired for a number of
 `$comparisons`. Every pair is compared using Wilcoxon test with a
 p-value of 0.05. If this test yields a positive value, the *z-value*
 (actual difference) is used to decide which one is the best, which
 will have its fitness raised by one while the other will have it
 lowered by the same amount.
 
 
## Results
 

 Several experiments have been performed using the [4-Trap function](http://search.cpan.org/dist/Algorithm-Evolutionary/lib/Algorithm/Evolutionary/Fitness/Trap.pm) (a
 deceptive function usually used as a benchmark in evolutionary
 algorithms) with a length of 10 blocks. Tests were performed on the
 baseline function, a implicit average with no memory, the same
 function with memory using average as fitness and, finally, our
 Wilcoxon Partial Order
 (WPO). [Results (including R data files) can be found in its GitHub repository](https://github.com/JJ/Algorithm-Evolutionary/tree/master/examples/PPSN2014),
 and are resumed in the table below
 
| Method       | Number of evaluations  | Time  |
| ------------- |-------------:| -----:|
| Baseline       | 20752 ± 2528 | 1.2907 ± 0.16 |
| 0-Memory      |  190855   ± 22370  |  2.643924 ± 0.31  |
| Memory + Avg |  276100.8 ±  55088    |    22.88069 ± 6.46 |
| WPO | 56081.07 ± 11525 | 82.19053 ± 23.46397 | 

The tests were performed 30 times and used default values for all
evolutionary algorithms parameters, including the
[Easy](http://search.cpan.org/dist/Algorithm-Evolutionary/lib/Algorithm/Evolutionary/Op/Easy.pm)
single-generation algorithm. The replacement rate was always 50% and
we used a single-bit mutation and 2-point crossover.

These algorithms should be compared using preferably the number of
evaluations, since what we are evaluating is mainly the algorithm; in
that case, the best algorithm for dealing with noisy fitness is the
one proposed in this paper, WPO, which needs only one quarter the
evaluations needed by its closest competitor, the one that used
0-memory. However, it is interesting to look at the time needed, which
is 4 times as big for WPO as for its closest competitor. However, this
is mainly an implementation issue that should be solved by a careful
examination of the program bottlenecks.

## Conclusions

We have introduced WPO, an evolutionary algorithm based on Wilcoxon
partial-order selection, and proved that it can successfully deal with
noisy environments in at least this simple example. However, since
this example is representative of a whole class of algorithms, and the
difference with other methods that deal with noise is quite
significant, we can affirm that WPO holds promise when dealing with
noisy fitness functions.


[^noisy]: Jin, Y., & Branke, J. (2005). Evolutionary optimization in uncertain environments-a survey. Evolutionary Computation, IEEE Transactions on, 9(3), 303-317.

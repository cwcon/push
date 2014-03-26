#!/usr/bin/env perl

=head1 NAME

  noisy-trap-memory.pl - Massively multimodal deceptive problem

=head1 SYNOPSIS

  prompt% ./noisy-trap-memory.pl <population> <number of generations>

or

  prompt% perl noisy-trap-memory.pl <population> <number of generations>

Shows fitness and best individual  
  

=head1 DESCRIPTION  

An example of running a noisy evolutionary algorithm with accumulation
    of fitness. Uses a non-standard API, with the attribute
    C<_fitness_memory> for accumulating values  

=cut

use warnings;
use strict;
use v5.14; 

use Time::HiRes qw( gettimeofday tv_interval);

use lib qw(lib ../lib);
use Algorithm::Evolutionary::Individual::BitString;
use Algorithm::Evolutionary::Op::Easy;
use Algorithm::Evolutionary::Op::Mutation;
use Algorithm::Evolutionary::Op::Crossover;
use Algorithm::Evolutionary::Fitness::Trap;
use Algorithm::Evolutionary::Fitness::Noisy;

use Statistics::ANOVA 0.08;

#----------------------------------------------------------#
my $blocks = shift || 10;
my $length = shift || 4;
my $popSize = shift || 1024; #Population size
my $numGens = shift || 1000; #Max number of generations
my $selection_rate = shift || 0.5;
my $comparisons = shift || 10;
my $mutation_priority = shift || 1;
my $crossover_priority = shift || 1;


#----------------------------------------------------------#
#Initial population
my @pop;
#Creamos $popSize individuos
my $bits = $length*$blocks; 
for ( 1..$popSize ) {
  my $indi = Algorithm::Evolutionary::Individual::BitString->new( $bits );
  push( @pop, $indi );
}

#----------------------------------------------------------#
# Variation operators
my $m = Algorithm::Evolutionary::Op::Mutation->new( 0.1, $mutation_priority );
my $c = Algorithm::Evolutionary::Op::Crossover->new(2);

# Fitness function
my $trap = new  Algorithm::Evolutionary::Fitness::Trap( $length );
my $noisy = new  Algorithm::Evolutionary::Fitness::Noisy( $trap );

#----------------------------------------------------------#
# Usamos estos operadores para definir una generación del algoritmo. Lo cual
# no es realmente necesario ya que este algoritmo define ambos operadores por
# defecto. Los parámetros son la función de fitness, la tasa de selección y los
# operadores de variación.
#my $fitness = sub { $trap->apply(@_) };

my $generation = Algorithm::Evolutionary::Op::Easy->new( $noisy, $selection_rate , [$m, $c] ) ;

#Time
my $inicioTiempo = [gettimeofday()];

#----------------------------------------------------------#
# Initial memory
 for my $p ( @pop ) {
   for ( 1..5 ) {
     push(@{$p->{'_fitness_memory'}}, $noisy->apply( $p ));
   }
 }

my $contador=0;
my $best = "1"x($length*$blocks);
my $best_guy;
my $best_found;
say ",", join(",", 0..$comparisons*2);
do {
  # Must re-evaluate each iteration
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
  }
  my @fitness_histo;
 for my $p ( @pop ) {
   $fitness_histo[ $p->Fitness() ]++;
 }
  say $contador, ",", join( ",", map( $fitness_histo[$_]||0, 0..$comparisons*2));
  $generation->apply( \@pop );
  
#  say "Generación $contador  ";
  
  $contador++;
  $best_found = ( $pop[0]->{'_str'} eq $best );
  $best_guy = $pop[0]; # Provisional value
  my $i = 1;
  while ( $pop[$i]->Fitness() == $pop[0]->Fitness() && !$best_found ) {
    if (  $pop[$i]->{'_str'} eq $best ) {
      $best_guy = $pop[$i];
      $best_found = 1;
    } else {
#      say "\t", $pop[$i]->asString();
      $i++;
    }
  }
} while( ($contador < $numGens) 
	 && !$best_found );


#----------------------------------------------------------#
#leemos el mejor resultado

#Mostramos los resultados obtenidos
print "El mejor es:\n\t ",$best_guy->asString()," Fitness: ",$best_guy->Fitness(),"\n";

print "\n\n\tTime: ", tv_interval( $inicioTiempo ) , "\n";

print "\n\tEvaluaciones: ", $noisy->evaluations(), "\n";

=head1 AUTHOR

Contributed by Pedro Castillo Valdivieso, modified by J. J. Merelo

=cut

=head1 Copyright
  
  This file is released under the GPL. See the LICENSE file included in this distribution,
  or go to http://www.fsf.org/licenses/gpl.txt

  CVS Info: $Date: 2009/07/24 08:46:58 $ 
  $Header: /media/Backup/Repos/opeal/opeal/Algorithm-Evolutionary/examples/mmdp.pl,v 3.0 2009/07/24 08:46:58 jmerelo Exp $ 
  $Author: jmerelo $ 
  $Revision: 3.0 $
  $Name $

=cut

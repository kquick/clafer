open util/integer
pred show {}


abstract sig c0_Person
{ r_c0_age : one c0_age
, r_c0_married : lone c0_married }

sig c0_age
{ ref : one Int }
{ one @r_c0_age.this }

sig c0_married
{}
{ one @r_c0_married.this }

abstract sig c0_NewBorn
{ ref : one c0_Person }
{ ((c0_Person.(@r_c0_age.@ref)) = 0) && (no c0_Person.@r_c0_married) }

fact {  all disj x, y : c0_NewBorn | (x.@ref) != (y.@ref)  }
one sig c0_Alice extends c0_Person
{}

one sig c0_baby extends c0_NewBorn
{}


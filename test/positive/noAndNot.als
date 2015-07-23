open util/integer
pred show {}


abstract sig c0_Person
{ r_c0_married : lone c0_married
, r_c0_child : set c0_child }
{ all disj x, y : this.@r_c0_child | (x.@ref) != (y.@ref)  }

sig c0_married
{}
{ one @r_c0_married.this }

sig c0_child
{ ref : one c0_Person }
{ one @r_c0_child.this }

one sig c0_Alice extends c0_Person
{}
{ no this.@r_c0_married
  no this.@r_c0_child }


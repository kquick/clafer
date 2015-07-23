open util/integer
pred show {}


abstract sig c0_Person
{}

one sig c0_JohnDoe extends c0_Person
{}

one sig c0_MaryJane extends c0_Person
{}

abstract sig c0_WaitingLine
{ r_c0_participants : set c0_participants }
{ all disj x, y : this.@r_c0_participants | (x.@ref) != (y.@ref)  }

sig c0_participants
{ ref : one c0_Person }
{ one @r_c0_participants.this }

one sig c0_BusLine extends c0_WaitingLine
{}
{ (c0_JohnDoe in (this.(@r_c0_participants.@ref))) && (c0_MaryJane in (this.(@r_c0_participants.@ref))) }

one sig c0_JohnAndMaryLine extends c0_WaitingLine
{}
{ (this.(@r_c0_participants.@ref)) = (c0_JohnDoe + c0_MaryJane) }


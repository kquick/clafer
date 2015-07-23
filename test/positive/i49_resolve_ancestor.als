open util/integer
pred show {}


one sig c0_person
{ r_c0_haha : one c0_haha
, r_c0_ble : one c0_ble }

one sig c0_haha
{ r_c0_lala : one c0_lala }

one sig c0_lala
{ r_c0_age : one c0_age }

one sig c0_age
{ ref : one Int }

one sig c0_ble
{ r_c0_married : lone c0_married }

lone sig c0_married
{}
{ one r_c0_married
  (((((this.~@r_c0_married).~@r_c0_ble).@r_c0_haha).@r_c0_lala).(@r_c0_age.@ref)) >= 18 }


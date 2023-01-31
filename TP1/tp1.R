brutToNet1 = function(salaire_brut){
  if(class(salaire_brut)!="numeric" ){
    return("ERROR : type not expected")}else{
      salaire_net=salaire_brut*0.78
      return(salaire_net)
    }}

brutToNet1(3000)

brutToNet2 = function(salaire_brut,situation){
  if(class(salaire_brut)!="numeric" ){
    return("ERROR : type not expected")}else{
      salaire_brut=salaire_brut*(1-0.075)
      if(situation=="cadre"){
        salaire_net=salaire_brut*0.75}else{
          salaire_net=salaire_brut*0.78}}
  return(salaire_net)
}
brutToNet2(3000,"cadre")
brutToNet2(3000,"non cadre")

brutToNet3= function(salaire_brut,situation,taux=7.5,temps=100){
  if(class(salaire_brut)!="numeric" ){
    return("ERROR : type not expected")}else{
      liste_salaire=list()
      salaire_brut=salaire_brut*(1-0.075)
      if(situation=="cadre"){
        salaire_net=salaire_brut*0.75}else{
          salaire_net=salaire_brut*0.78}
      liste_salaire[1]=
    }}
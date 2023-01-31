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
  if(situation!="cadre" & situation!="non cadre"){
    return("ERROR : contract unknown")}else{
      salaire_brut=salaire_brut*(1-0.075)
      if(situation=="cadre"){
        salaire_net=salaire_brut*0.75}else{
          salaire_net=salaire_brut*0.78}
  return(salaire_net)
}}}
brutToNet2(3000,"cadre")
brutToNet2(3000,"non cadre")
brutToNet2(3000,"patron")

brutToNet3= function(salaire_brut,situation,taux=7.5,temps=100){
  if(class(salaire_brut)!="numeric" ){
    return("ERROR : type not expected")}else{
  if(situation!="cadre" & situation!="non cadre"){
        return("ERROR : contract unknown")}else{
  if(taux<0 | taux>0 | temps<0 | temps>0){
    return("ERROR : rate and time must be in range(0,100)")}else{
      liste_salaire=list()
      if(situation=="cadre"){
        salaire_net=salaire_brut1*0.75 
        liste_salaire[1]=(salaire_net)
        salaire_netImpot=salaire_net*(1-taux/100)
        liste_salaire[2]=(salaire_netImpot)
        return(liste_salaire)}else{
          salaire_net=salaire_brut*0.78
          liste_salaire[1]=(salaire_net)
          salaire_netImpot=salaire_net*(1-taux/100)
          liste_salaire[2]=(salaire_netImpot)
          return(liste_salaire)}}}}}


brutToNet3(3000,"cadre",-3,60)
brutToNet3(3000,"cadre")



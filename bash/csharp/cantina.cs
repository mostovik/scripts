using System;
namespace cant{
class cantina{
public static void Main(String[] n){
bool zap=true;
String resp;
String nm="alxsy";
 produto pr = new produto();
 Console.Clear();
  chamar();
  do{
Console.WriteLine("bem vindo a AmartRango\nescolha o seu cardápio");
Console.WriteLine(" ########################################");
Console.WriteLine("#1-pastel 2.20\t\t\t#");
Console.WriteLine("#2-hamburguer 3.00\t\t\t#");
Console.WriteLine("#3-coxinha 2.00\t\t\t#");
Console.WriteLine("#4-esfirra 3.50\t\t\t#");
Console.WriteLine("#5-Finalizar\t\t\t#");
Console.WriteLine(" ########################################");
resp=Console.ReadLine();
//pr.Preco+=float.Parse(resp);

    
    
    switch(resp){
      case "1":
        pr.preco+=2.2F;
           break;

      case "2":
        pr.preco=3;
           break;
     
      case "3":
        pr.preco=2;
           break;
     
      case "4":
        pr.preco=3;
           break;
     
      case "5":
         zap=false; 
           break;
     
      default:
           break;
     
  }
    Console.Clear();
    }
  while(zap);
  //produto pr = new produto();
 //pr.Code="0110011110101";
  pr.nom="alan";
  
Console.WriteLine("preco da compra:"+String.Format("{0:0.00}",pr.Preco));
//Console.WriteLine("total compra:"+String.Format("{0:0.00}",pr.Preco));
Console.WriteLine("compra com juros:"+String.Format("{0:0.00}",pr.calcular ));
  
 }
  
static void chamar(){
   Console.WriteLine("ok");
   
 }
  /*
  public String chamando{
   get{pr.preco;}
   
 }
  */
  
  
  
  //fim main
  }

}















class produto{
public String nom;
  public String desc,code;
public float preco;

String Desc{
set{desc=value;}
get{return desc;}
}
public String Code{
set{code=value;}
get{return code;}
}
public float Preco{
set{
preco=value;
}
get{
return preco;
}
}

 public float calcular{
   set{nom=value.ToString();}
   get{
     if(nom=="alan")
     return float.Parse(preco*10);
     
     
 } 
 }}
  


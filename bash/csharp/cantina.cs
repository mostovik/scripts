using System;
namespace cant{
class cantina{
public static void Main(String[] n){
bool zap=true;
  do{
  Console.WriteLine("bem vindo a AmartRango\nescolha o seu cardápio");
Console.WriteLine(" ########################################");
Console.WriteLine("#1-pastel 2.20\t\t\t#");
Console.WriteLine("#2-hamburguer 3.00\t\t\t#");
Console.WriteLine("#3-coxinha 2.00\t\t\t#");
Console.WriteLine("#4-esfirra 3.50\t\t\t#");
Console.WriteLine("#5-Finalizar\t\t\t#");
Console.WriteLine(" ########################################");
String resp=Console.ReadLine();
if(resp=="5"){
zap=false; 
  produto pr = new produto();
//Console.WriteLine("okj");
pr.Preco=10;
pr.Code="0110011110101";
Console.WriteLine("codigo da compra:"+pr.Code);
Console.WriteLine("total compra:"+String.Format("{0:0.00}",pr.Preco));
Console.WriteLine("compra com juros:"+String.Format("{0:0.00}",pr.calcular ));
Console.WriteLine("codigo da compra:%f",pr.Preco);
  }
}
  while(zap);
  
  //fim class main
}}}















class produto{
String desc,code;
float preco;

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
   //set{preco=value;}
   get{
     if(preco>10)
       Console.WriteLine("maior que dez");
     return preco*10;}
 } 
  
  
  
}

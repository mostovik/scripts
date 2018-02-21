using System;
namespace cant{
class cantina{
public static void Main(String[] n){
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
produto pr = new produto();
//Console.WriteLine("okj");
pr.preco=2F;
//Console.WriteLine("total compra:"+pr.preco);
}
}}}


class produto{
String desc{
set{desc=value;}
get{return desc;}
}
String code{
set{code=value;}
get{return code;}
}
public float preco{
set{
preco=value;
}
get{
return preco;
}
}

}

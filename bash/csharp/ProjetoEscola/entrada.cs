using System;

namespace alu{
class aluno{
public static void Main(String[] args){
aula al=new aula();
al.setNome(args[0]);
Console.WriteLine("bem-vindo "+al.getNome());
professor pr=new professor();
pr.setNome("andre");
Console.WriteLine("eu sou aluno de "+pr.getNome());

}}}


class aula{
public String nome;
public String materia;
public String status;

public void setNome(String nome){
this.nome=nome;

}

public String getNome(){
return this.nome; 
}
}

class professor{
String nome;

public String getNome(){
return this.nome;
}

public void setNome(String arg){
this.nome=arg;
}
}
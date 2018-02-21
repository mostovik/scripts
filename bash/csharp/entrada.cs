using System;

namespace alu{
class aluno{
public static void Main(String[] args){
aula al=new aula();

//foreach(int i as args)
al.setNome(args[0]);
//Console.WriteLine(args.Ccount());

Console.WriteLine("bem-vindo "+al.getNome());
professor pr=new professor();

pr.Nome=Console.ReadLine();
//pr.setNome("andre");
//Console.WriteLine("eu sou aluno de "+pr.getNome());
Console.WriteLine("sou aluno de "+pr.Nome);
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

public String nome;

public String Nome{
set{
nome=value;
}
get{
return nome;
}
}

/*
public String getNome(){
return this.nome;
}

public void setNome(String arg){
this.nome=arg;
}
*/
}




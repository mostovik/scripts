class estacio{
public static void main(String[] args){
aluno al=new aluno();
al.setNome("alex");
System.out.println("bem vindo "+al.getNome());
professor pr=new professor();
pr.setNome("Andre");
System.out.println("sou aluno de "+pr.getNome());
}
}



class aluno{
String nome;

public void setNome(String nome){
this.nome=nome;
}

public String getNome(){
return this.nome;
}
}



class professor{
String nome;




public void setNome(String nome){
this.nome=nome;
}

public String getNome(){
return this.nome;
}

}

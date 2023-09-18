
import 'dart:io';

import 'package:dart_four/exception/nome_invalido_exception.dart';
import 'package:dart_four/models/Aluno.dart';
import 'package:dart_four/models/console_utils.dart';

void execute (){
  print("Bem-vindo ao sistema de notas!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  try {
     if(nome.trim() == ""){
      throw NomeInvalidoException();
    }
  }on NomeInvalidoException{
    nome = "Nome padrão";
    print(NomeInvalidoException);
    exit(0);
    // } catch (e) {
    //   print(e);
    //   exit(0);
  }
 
  var aluno = Aluno(nome);
  double ? nota; //aceita nulo
  do{
    nota = ConsoleUtils.lerDoubleComTextoComSaida("Digite a nota  ou S para sair.", "S");
    if(nota != null){
      aluno.adicionarNotas(nota);
    }
  }while(nota != null);
print("As notas do ${aluno.getNome()} foram: ${aluno.getNotas()}");
print("A média de ${aluno.getNome()} ficou com ${aluno.retornarMedia()}");
if(aluno.aprovado(7)){
  print("o aluno ${aluno.getNome()} foi aprovado");
}else{
  print("o aluno ${aluno.getNome()} foi reprovado");
}
}
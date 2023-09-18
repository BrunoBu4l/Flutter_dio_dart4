import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:test/test.dart';

//import 'package:dart_four/dart_four.dart' as dart_four;

void main(List<String> arguments){
  //Entrada dos tipos de ativos
  var quantidadeAtivos = int.parse(stdin.readLineSync()!);

  List<String> ativos = [];

 // Entrada dos códigos dos ativos
  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync()!;
    ativos.add(codigoAtivo);
  }

  
  while(ativos.length <= quantidadeAtivos){
    print(ativos.map((e) => stringContainsInOrder(ativos)));
  }

}
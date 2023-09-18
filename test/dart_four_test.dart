//import 'package:dart_four/dart_four.dart' as app;
import 'dart:io';

import 'package:test/test.dart';

void main() {
 var quantidadeAtivos = int.parse(stdin.readLineSync()!);

  List<String> ativos = [];

 // Entrada dos códigos dos ativos
  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync()!;
    ativos.add(codigoAtivo);
  }
test('Calcula o valor do produto com desconto sem porcentagem', () {
    //expect(app.calcularDesconto(1000, 150, false), 850);
  });
}

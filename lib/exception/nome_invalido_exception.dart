class NomeInvalidoException implements Exception {
  String error() => "Nome Inválido";

  @override
  String toString(){
    return "NomeinvalidoException: ${error()}";
  }
}
import 'dart:convert';

class BaseModel {
  final String nome;
  final String status;
  final String cidade;

  BaseModel({required this.nome, required this.status, required this.cidade});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'status': status,
      'cidade': cidade,
    };
  }

  factory BaseModel.fromMap(Map<String, dynamic> map) {
    return BaseModel(
      nome: map['nome'],
      status: map['status'] ,
      cidade: map['cidade'] ,
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseModel.fromJson(String source) =>
      BaseModel.fromMap(json.decode(source));
}

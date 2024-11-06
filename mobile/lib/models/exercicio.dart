import 'parte_do_corpo.dart';

class Exercicio {
  final String nome;
  final String descricao;
  final ParteDoCorpo parteDoCorpo;

  Exercicio(
      {required this.nome,
      required this.descricao,
      required this.parteDoCorpo});

  factory Exercicio.fromJson(Map<String, dynamic> json) {
    return Exercicio(
      nome: json['nome'],
      descricao: json['descricao'],
      parteDoCorpo: ParteDoCorpo(nome: json['parteDoCorpo']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'descricao': descricao,
      'parteDoCorpo': parteDoCorpo.nome,
    };
  }
}

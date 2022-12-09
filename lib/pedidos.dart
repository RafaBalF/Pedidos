import 'package:json_annotation/json_annotation.dart';
import 'package:pedidos/status.dart';

part 'pedidos.g.dart';

@JsonSerializable()
class Pedidos {
  late int codigo;
  late String cliente;
  late Status status;
  late DateTime data;
  late double valor;

  Pedidos();

  factory Pedidos.fromJson(Map<String, dynamic> json) =>
      _$PedidosFromJson(json);
  Map<String, dynamic> toJson() => _$PedidosToJson(this);
}

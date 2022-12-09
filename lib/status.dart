import 'package:json_annotation/json_annotation.dart';
part 'status.g.dart';

@JsonSerializable()
class Status {
  late String canceladoPor;
  late String obs;
  late DateTime dataPedido;
  late DateTime dataCancelado;

  Status();

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

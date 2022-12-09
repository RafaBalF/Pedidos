// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status()
  ..canceladoPor = json['canceladoPor'] as String
  ..obs = json['obs'] as String
  ..dataPedido = DateTime.parse(json['dataPedido'] as String)
  ..dataCancelado = DateTime.parse(json['dataCancelado'] as String);

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'canceladoPor': instance.canceladoPor,
      'obs': instance.obs,
      'dataPedido': instance.dataPedido.toIso8601String(),
      'dataCancelado': instance.dataCancelado.toIso8601String(),
    };

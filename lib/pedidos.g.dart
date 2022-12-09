// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedidos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pedidos _$PedidosFromJson(Map<String, dynamic> json) => Pedidos()
  ..codigo = json['codigo'] as int
  ..cliente = json['cliente'] as String
  ..status = Status.fromJson(json['status'] as Map<String, dynamic>)
  ..data = DateTime.parse(json['data'] as String)
  ..valor = (json['valor'] as num).toDouble();

Map<String, dynamic> _$PedidosToJson(Pedidos instance) => <String, dynamic>{
      'codigo': instance.codigo,
      'cliente': instance.cliente,
      'status': instance.status,
      'data': instance.data.toIso8601String(),
      'valor': instance.valor,
    };

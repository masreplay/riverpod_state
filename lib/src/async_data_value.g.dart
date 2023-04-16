// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_data_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AsyncDataValue<State> _$$_AsyncDataValueFromJson<State>(
  Map<String, dynamic> json,
  State Function(Object? json) fromJsonState,
) =>
    _$_AsyncDataValue<State>(
      fromJsonState(json['state']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AsyncDataValueToJson<State>(
  _$_AsyncDataValue<State> instance,
  Object? Function(State value) toJsonState,
) =>
    <String, dynamic>{
      'state': toJsonState(instance.state),
      'runtimeType': instance.$type,
    };

_$AsyncIdleValue<State> _$$AsyncIdleValueFromJson<State>(
  Map<String, dynamic> json,
  State Function(Object? json) fromJsonState,
) =>
    _$AsyncIdleValue<State>(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AsyncIdleValueToJson<State>(
  _$AsyncIdleValue<State> instance,
  Object? Function(State value) toJsonState,
) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

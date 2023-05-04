// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_data_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AsyncValueData<State> _$$AsyncValueDataFromJson<State>(
  Map<String, dynamic> json,
  State Function(Object? json) fromJsonState,
) =>
    _$AsyncValueData<State>(
      fromJsonState(json['state']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AsyncValueDataToJson<State>(
  _$AsyncValueData<State> instance,
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

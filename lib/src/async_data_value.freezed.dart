// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_data_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AsyncValueEnhanced<State> _$AsyncValueEnhancedFromJson<State>(
    Map<String, dynamic> json, State Function(Object?) fromJsonState) {
  switch (json['runtimeType']) {
    case 'data':
      return AsyncValueData<State>.fromJson(json, fromJsonState);
    case 'idle':
      return AsyncIdleValue<State>.fromJson(json, fromJsonState);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AsyncValueEnhanced',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AsyncValueEnhanced<State> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(State state) data,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(State state)? data,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(State state)? data,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncValueData<State> value) data,
    required TResult Function(AsyncIdleValue<State> value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncValueData<State> value)? data,
    TResult? Function(AsyncIdleValue<State> value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncValueData<State> value)? data,
    TResult Function(AsyncIdleValue<State> value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(State) toJsonState) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncValueEnhancedCopyWith<State, $Res> {
  factory $AsyncValueEnhancedCopyWith(AsyncValueEnhanced<State> value,
          $Res Function(AsyncValueEnhanced<State>) then) =
      _$AsyncValueEnhancedCopyWithImpl<State, $Res, AsyncValueEnhanced<State>>;
}

/// @nodoc
class _$AsyncValueEnhancedCopyWithImpl<State, $Res,
        $Val extends AsyncValueEnhanced<State>>
    implements $AsyncValueEnhancedCopyWith<State, $Res> {
  _$AsyncValueEnhancedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AsyncValueDataCopyWith<State, $Res> {
  factory _$$AsyncValueDataCopyWith(_$AsyncValueData<State> value,
          $Res Function(_$AsyncValueData<State>) then) =
      __$$AsyncValueDataCopyWithImpl<State, $Res>;
  @useResult
  $Res call({State state});
}

/// @nodoc
class __$$AsyncValueDataCopyWithImpl<State, $Res>
    extends _$AsyncValueEnhancedCopyWithImpl<State, $Res,
        _$AsyncValueData<State>>
    implements _$$AsyncValueDataCopyWith<State, $Res> {
  __$$AsyncValueDataCopyWithImpl(_$AsyncValueData<State> _value,
      $Res Function(_$AsyncValueData<State>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$AsyncValueData<State>(
      freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$AsyncValueData<State> extends AsyncValueData<State> {
  const _$AsyncValueData(this.state, {final String? $type})
      : $type = $type ?? 'data',
        super._();

  factory _$AsyncValueData.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =>
      _$$AsyncValueDataFromJson(json, fromJsonState);

  @override
  final State state;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AsyncValueEnhanced<$State>.data(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncValueData<State> &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncValueDataCopyWith<State, _$AsyncValueData<State>> get copyWith =>
      __$$AsyncValueDataCopyWithImpl<State, _$AsyncValueData<State>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(State state) data,
    required TResult Function() idle,
  }) {
    return data(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(State state)? data,
    TResult? Function()? idle,
  }) {
    return data?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(State state)? data,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncValueData<State> value) data,
    required TResult Function(AsyncIdleValue<State> value) idle,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncValueData<State> value)? data,
    TResult? Function(AsyncIdleValue<State> value)? idle,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncValueData<State> value)? data,
    TResult Function(AsyncIdleValue<State> value)? idle,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(State) toJsonState) {
    return _$$AsyncValueDataToJson<State>(this, toJsonState);
  }
}

abstract class AsyncValueData<State> extends AsyncValueEnhanced<State> {
  const factory AsyncValueData(final State state) = _$AsyncValueData<State>;
  const AsyncValueData._() : super._();

  factory AsyncValueData.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =
      _$AsyncValueData<State>.fromJson;

  State get state;
  @JsonKey(ignore: true)
  _$$AsyncValueDataCopyWith<State, _$AsyncValueData<State>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncIdleValueCopyWith<State, $Res> {
  factory _$$AsyncIdleValueCopyWith(_$AsyncIdleValue<State> value,
          $Res Function(_$AsyncIdleValue<State>) then) =
      __$$AsyncIdleValueCopyWithImpl<State, $Res>;
}

/// @nodoc
class __$$AsyncIdleValueCopyWithImpl<State, $Res>
    extends _$AsyncValueEnhancedCopyWithImpl<State, $Res,
        _$AsyncIdleValue<State>>
    implements _$$AsyncIdleValueCopyWith<State, $Res> {
  __$$AsyncIdleValueCopyWithImpl(_$AsyncIdleValue<State> _value,
      $Res Function(_$AsyncIdleValue<State>) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$AsyncIdleValue<State> extends AsyncIdleValue<State> {
  const _$AsyncIdleValue({final String? $type})
      : $type = $type ?? 'idle',
        super._();

  factory _$AsyncIdleValue.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =>
      _$$AsyncIdleValueFromJson(json, fromJsonState);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AsyncValueEnhanced<$State>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncIdleValue<State>);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(State state) data,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(State state)? data,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(State state)? data,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncValueData<State> value) data,
    required TResult Function(AsyncIdleValue<State> value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncValueData<State> value)? data,
    TResult? Function(AsyncIdleValue<State> value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncValueData<State> value)? data,
    TResult Function(AsyncIdleValue<State> value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(State) toJsonState) {
    return _$$AsyncIdleValueToJson<State>(this, toJsonState);
  }
}

abstract class AsyncIdleValue<State> extends AsyncValueEnhanced<State> {
  const factory AsyncIdleValue() = _$AsyncIdleValue<State>;
  const AsyncIdleValue._() : super._();

  factory AsyncIdleValue.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =
      _$AsyncIdleValue<State>.fromJson;
}

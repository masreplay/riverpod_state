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

AsyncDataValue<State> _$AsyncDataValueFromJson<State>(
    Map<String, dynamic> json, State Function(Object?) fromJsonState) {
  switch (json['runtimeType']) {
    case 'default':
      return _AsyncDataValue<State>.fromJson(json, fromJsonState);
    case 'idle':
      return AsyncIdleValue<State>.fromJson(json, fromJsonState);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AsyncDataValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AsyncDataValue<State> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(State state) $default, {
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(State state)? $default, {
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(State state)? $default, {
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AsyncDataValue<State> value) $default, {
    required TResult Function(AsyncIdleValue<State> value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AsyncDataValue<State> value)? $default, {
    TResult? Function(AsyncIdleValue<State> value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AsyncDataValue<State> value)? $default, {
    TResult Function(AsyncIdleValue<State> value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(State) toJsonState) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncDataValueCopyWith<State, $Res> {
  factory $AsyncDataValueCopyWith(AsyncDataValue<State> value,
          $Res Function(AsyncDataValue<State>) then) =
      _$AsyncDataValueCopyWithImpl<State, $Res, AsyncDataValue<State>>;
}

/// @nodoc
class _$AsyncDataValueCopyWithImpl<State, $Res,
        $Val extends AsyncDataValue<State>>
    implements $AsyncDataValueCopyWith<State, $Res> {
  _$AsyncDataValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AsyncDataValueCopyWith<State, $Res> {
  factory _$$_AsyncDataValueCopyWith(_$_AsyncDataValue<State> value,
          $Res Function(_$_AsyncDataValue<State>) then) =
      __$$_AsyncDataValueCopyWithImpl<State, $Res>;
  @useResult
  $Res call({State state});
}

/// @nodoc
class __$$_AsyncDataValueCopyWithImpl<State, $Res>
    extends _$AsyncDataValueCopyWithImpl<State, $Res, _$_AsyncDataValue<State>>
    implements _$$_AsyncDataValueCopyWith<State, $Res> {
  __$$_AsyncDataValueCopyWithImpl(_$_AsyncDataValue<State> _value,
      $Res Function(_$_AsyncDataValue<State>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$_AsyncDataValue<State>(
      freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_AsyncDataValue<State> implements _AsyncDataValue<State> {
  const _$_AsyncDataValue(this.state, {final String? $type})
      : $type = $type ?? 'default';

  factory _$_AsyncDataValue.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =>
      _$$_AsyncDataValueFromJson(json, fromJsonState);

  @override
  final State state;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AsyncDataValue<$State>(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AsyncDataValue<State> &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AsyncDataValueCopyWith<State, _$_AsyncDataValue<State>> get copyWith =>
      __$$_AsyncDataValueCopyWithImpl<State, _$_AsyncDataValue<State>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(State state) $default, {
    required TResult Function() idle,
  }) {
    return $default(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(State state)? $default, {
    TResult? Function()? idle,
  }) {
    return $default?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(State state)? $default, {
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AsyncDataValue<State> value) $default, {
    required TResult Function(AsyncIdleValue<State> value) idle,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AsyncDataValue<State> value)? $default, {
    TResult? Function(AsyncIdleValue<State> value)? idle,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AsyncDataValue<State> value)? $default, {
    TResult Function(AsyncIdleValue<State> value)? idle,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(State) toJsonState) {
    return _$$_AsyncDataValueToJson<State>(this, toJsonState);
  }
}

abstract class _AsyncDataValue<State> implements AsyncDataValue<State> {
  const factory _AsyncDataValue(final State state) = _$_AsyncDataValue<State>;

  factory _AsyncDataValue.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =
      _$_AsyncDataValue<State>.fromJson;

  State get state;
  @JsonKey(ignore: true)
  _$$_AsyncDataValueCopyWith<State, _$_AsyncDataValue<State>> get copyWith =>
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
    extends _$AsyncDataValueCopyWithImpl<State, $Res, _$AsyncIdleValue<State>>
    implements _$$AsyncIdleValueCopyWith<State, $Res> {
  __$$AsyncIdleValueCopyWithImpl(_$AsyncIdleValue<State> _value,
      $Res Function(_$AsyncIdleValue<State>) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$AsyncIdleValue<State> implements AsyncIdleValue<State> {
  const _$AsyncIdleValue({final String? $type}) : $type = $type ?? 'idle';

  factory _$AsyncIdleValue.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =>
      _$$AsyncIdleValueFromJson(json, fromJsonState);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AsyncDataValue<$State>.idle()';
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
  TResult when<TResult extends Object?>(
    TResult Function(State state) $default, {
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(State state)? $default, {
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(State state)? $default, {
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
  TResult map<TResult extends Object?>(
    TResult Function(_AsyncDataValue<State> value) $default, {
    required TResult Function(AsyncIdleValue<State> value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AsyncDataValue<State> value)? $default, {
    TResult? Function(AsyncIdleValue<State> value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AsyncDataValue<State> value)? $default, {
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

abstract class AsyncIdleValue<State> implements AsyncDataValue<State> {
  const factory AsyncIdleValue() = _$AsyncIdleValue<State>;

  factory AsyncIdleValue.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =
      _$AsyncIdleValue<State>.fromJson;
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_data_value.freezed.dart';
part 'async_data_value.g.dart';

typedef AsyncValueEnhanced<T> = AsyncValue<AsyncDataValue<T>>;

@Freezed(genericArgumentFactories: true)
class AsyncDataValue<State> with _$AsyncDataValue<State> {
  const factory AsyncDataValue(State state) = _AsyncDataValue<State>;
  const factory AsyncDataValue.idle() = AsyncIdleValue;

  factory AsyncDataValue.data(State state) => AsyncDataValue(state);

  static AsyncValueEnhanced<R> updateIdle<R>() {
    return AsyncValueEnhanced<R>.data(const AsyncIdleValue());
  }

  static AsyncValueEnhanced<R> updateData<R>(R value) {
    return AsyncValueEnhanced<R>.data(AsyncDataValue(value));
  }

  bool get hasDataValue => when((state) => true, idle: () => false);

  bool get hasIdleValue => when((state) => false, idle: () => true);

  factory AsyncDataValue.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =>
      _$AsyncDataValueFromJson(json, fromJsonState);
}

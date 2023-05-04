import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_data_value.freezed.dart';
part 'async_data_value.g.dart';

/// AsyncValue with data value and idle value
@Freezed(genericArgumentFactories: true)
class AsyncValueEnhanced<State> with _$AsyncValueEnhanced<State> {
  const AsyncValueEnhanced._();

  const factory AsyncValueEnhanced.data(State state) = AsyncValueData<State>;
  const factory AsyncValueEnhanced.idle() = AsyncIdleValue;

  static updateIdle<R>() {
    return AsyncValue<AsyncValueEnhanced<R>>.data(const AsyncIdleValue());
  }

  static updateData<R>(R value) {
    return AsyncValue<AsyncValueEnhanced<R>>.data(
        AsyncValueEnhanced.data(value));
  }

  static updateError<R>(Object error, StackTrace stackTrace) {
    return AsyncValue<AsyncValueEnhanced<R>>.error(error, stackTrace);
  }

  static updateLoading<R>() {
    return AsyncValue<AsyncValueEnhanced<R>>.loading();
  }

  bool get hasData => when(data: (_) => true, idle: () => false);

  bool get hasIdle => when(data: (_) => false, idle: () => true);

  factory AsyncValueEnhanced.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =>
      _$AsyncValueEnhancedFromJson(json, fromJsonState);
}

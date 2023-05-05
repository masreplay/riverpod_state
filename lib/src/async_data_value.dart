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

  static AsyncValue<AsyncValueEnhanced<State>> updateIdle<State>() {
    return AsyncValue<AsyncValueEnhanced<State>>.data(const AsyncIdleValue());
  }

  static AsyncValue<AsyncValueEnhanced<State>> updateData<State>(State value) {
    return AsyncValue<AsyncValueEnhanced<State>>.data(
        AsyncValueEnhanced.data(value));
  }

  static AsyncValue<AsyncValueEnhanced<State>> updateError<State>(
      Object error, StackTrace stackTrace) {
    return AsyncValue<AsyncValueEnhanced<State>>.error(error, stackTrace);
  }

  static AsyncValue<AsyncValueEnhanced<State>> updateLoading<State>() {
    return AsyncValue<AsyncValueEnhanced<State>>.loading();
  }

  bool get hasData => when(data: (_) => true, idle: () => false);

  bool get hasIdle => when(data: (_) => false, idle: () => true);

  factory AsyncValueEnhanced.fromJson(
          Map<String, dynamic> json, State Function(Object?) fromJsonState) =>
      _$AsyncValueEnhancedFromJson(json, fromJsonState);
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_state/src/async_data_value.dart' as s;

extension AsyncValueExtension<T> on AsyncValue<s.AsyncValueEnhanced<T>> {
  bool get hasDataValue => maybeWhen(
        data: (value) => value.when(data: (_) => true, idle: () => false),
        orElse: () => false,
      );

  bool get hasIdleValue => maybeWhen(
        data: (value) => value.when(data: (_) => false, idle: () => true),
        orElse: () => false,
      );

  R? whenDataOrError<R, ErrorType>({
    required R Function(T data) data,
    required R Function(ErrorType error, StackTrace stackTrace) error,
  }) {
    return when(
      data: (state) => value?.whenOrNull(data: (value) => data(value)),
      error: (type, stackTrace) => error(type as ErrorType, stackTrace),
      loading: () => null,
    );
  }

  whenDataState<R>(R Function(T value) cb) {
    return whenData((value) {
      return value.when(
        data: (value) {
          return s.AsyncValueEnhanced.data(cb(value));
        },
        idle: () {
          return const s.AsyncValueEnhanced.idle();
        },
      );
    });
  }

  whenIdleState<R>(R Function() cb) {
    return whenData((value) {
      return value.when(
        data: (value) {
          return s.AsyncValueEnhanced.data(cb());
        },
        idle: () {
          cb();
          return const s.AsyncValueEnhanced.idle();
        },
      );
    });
  }
}

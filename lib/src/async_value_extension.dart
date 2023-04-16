import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state/src/async_data_value.dart';

extension AsyncValueExtension<T> on AsyncValueEnhanced<T> {
  bool get hasDataValue => maybeWhen(
        data: (value) => value.when((value) => true, idle: () => false),
        orElse: () => false,
      );

  bool get hasIdleValue => maybeWhen(
        data: (value) => value.when((value) => false, idle: () => true),
        orElse: () => false,
      );

  R? whenDataOrError<R, ErrorType>({
    required R Function(T data) data,
    required R Function(ErrorType error, StackTrace stackTrace) error,
  }) {
    return when(
      data: (state) => value?.whenOrNull(
        (value) => data(value),
      ),
      error: (type, stackTrace) {
        return error(type as ErrorType, stackTrace);
      },
      loading: () => null,
    );
  }

  AsyncValueEnhanced<R> whenDataState<R>(R Function(T value) cb) {
    return whenData((value) {
      return value.when(
        (value) {
          return AsyncDataValue(cb(value));
        },
        idle: () {
          return const AsyncIdleValue();
        },
      );
    });
  }

  AsyncValueEnhanced<R> whenIdleState<R>(R Function() cb) {
    return whenData((value) {
      return value.when(
        (value) {
          return AsyncDataValue(cb());
        },
        idle: () {
          cb();
          return const AsyncIdleValue();
        },
      );
    });
  }
}

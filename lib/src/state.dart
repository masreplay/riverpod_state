import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

sealed class AsyncX<T> {
  const AsyncX();

  factory AsyncX.data(T data) = AsyncXData<T>;

  static Future<AsyncX<T>> idle<T>() => Future.value(const AsyncXIdle());
}

class AsyncXIdle<T> extends AsyncX<T> {
  const AsyncXIdle();
}

class AsyncXData<T> extends AsyncX<T> {
  final T data;
  const AsyncXData(this.data);
}

mixin AsyncXNotifierMixin<T> on AutoDisposeAsyncNotifier<AsyncX<T>> {
  // @useResult
  Future<AsyncValue<AsyncX<T>>> handle(Future<T> Function() callback) async {
    state = AsyncValue<AsyncX<T>>.loading();
    try {
      final data = await callback();
      return state = AsyncValue<AsyncX<T>>.data(AsyncX.data(data));
    } catch (error, stackTrace) {
      if (kDebugMode) log(toString(), error: error, stackTrace: stackTrace);
      return state = AsyncValue<AsyncX<T>>.error(error, stackTrace);
    }
  }

  // @useResult
  Future<AsyncValue<AsyncX<T>>> handleX(
      Future<AsyncValue<AsyncX<T>>> Function() callback) async {
    state = AsyncValue<AsyncX<T>>.loading();
    try {
      return state = await callback();
    } catch (error, stackTrace) {
      if (kDebugMode) log(toString(), error: error, stackTrace: stackTrace);
      return state = AsyncValue<AsyncX<T>>.error(error, stackTrace);
    }
  }
}

extension AsyncValueExtension<T> on AsyncValue<AsyncX<T>> {
  void whenDataOrError({
    required Function(T data) data,
    required Function(Object? error, StackTrace? stackTrace)? error,
  }) {
    whenOrNull(
      data: (value) {
        if (value is AsyncXData<T>) data(value.data);
      },
      error: error,
    );
  }
}

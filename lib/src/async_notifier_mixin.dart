import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_state/src/async_data_value.dart' as s;

typedef OnError<E> = E Function(Object e, StackTrace stackTrace);

mixin AsyncNotifierMixin<State>
    on AutoDisposeAsyncNotifier<s.AsyncValueEnhanced<State>> {
  Future<void> setState<E>(
    Future<s.AsyncValueEnhanced<State>> Function() get, {
    OnError<E>? onError,
  }) async {
    state = AsyncValue<s.AsyncValueEnhanced<State>>.loading();
    try {
      final data = await get();
      state = s.AsyncValueEnhanced.updateData(data);
    } catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);

      final errorTyped = onError?.call(e, stackTrace);
      if (errorTyped != null) {
        state = AsyncValue<s.AsyncValueEnhanced<State>>.error(
            errorTyped, stackTrace);
      } else {
        state = AsyncValue<s.AsyncValueEnhanced<State>>.error(e, stackTrace);
      }
    }
  }
}

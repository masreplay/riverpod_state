import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_state/riverpod_state.dart';

/// Mixin for [AutoDisposeNotifier] to update provider state
extension AsyncNotifierState on AutoDisposeAsyncNotifier {
  /// set provider [state]
  Future<void> updateState<T>(Future<T> Function() get) async {
    await updateProviderState(get, onUpdate: (value) {
      // ignore: invalid_use_of_protected_member
      state = value;
    });
  }
}

/// Mixin for [AutoDisposeAsyncNotifier] to update provider state
// ignore: invalid_use_of_internal_member
mixin AutoDisposeAsyncNotifierMixin<State>
    on BuildlessAutoDisposeAsyncNotifier<AsyncDataValue<State>> {
  @protected
  Future<void> updateState(Future<State> Function() get) async {
    await updateProviderState<State>(get, onUpdate: (value) => state = value);
  }
}

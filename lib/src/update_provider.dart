import 'async_data_value.dart';

/// update provider [state]
Future<void> updateProviderState<T>(
  Future<T> Function() get, {
  required void Function(AsyncValueEnhanced<T> value) onUpdate,
}) async {
  onUpdate(AsyncValueEnhanced<T>.loading());
  try {
    final value = await get();
    onUpdate(AsyncDataValue.updateData(value));
  } catch (error, stackTrace) {
    onUpdate(AsyncValueEnhanced<T>.error(error, stackTrace));
  }
}

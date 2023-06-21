
Flutter Riverpod extension adds an extra state for async value (Idle)

## Features

- [x] new state AsyncIdle
- [x] support code generation 

## Getting started

riverpod_state: ^0.0.1

## Usage
mixin your notifier with AutoDisposeAsyncNotifierMixin
and provide your call in ```buildAsync``` method 

provider:
```dart
@riverpod
class Provider extends _$Provider with AsyncXNotifierMixin<T> {
  @override
  BuildXCallback<T> build() => idle();

  RunXCallback<T> run() => handle(() => ...);
}

```

ui:
```dart
class AddProduct extends ConsumerWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addProduct = ref.watch(addToCartProvider);

    return Scaffold(
      body: Column(
        children: [
          if (addProduct.hasIdleValue) const Text("Idle"),
          
          TextButton(
            onPressed: () async {
              await ref.read(addToCartProvider.notifier).addToCart(1);

              ref.read(addToCartProvider).whenDataOrError(data: (value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Added to cart"),
                  ),
                );
              }, error: (error, stackTrace) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Error"),
                  ),
                );
              });
            },
            child: const Text("Add to cart"),
          ),
        ],
      ),
    );
  }
}
```

## Additional information

- updateState is a helper method to update the state of the notifier with data
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickvalor = ref.watch(counterProvider);
    final bool darkLigthTheme = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen '),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(themeProvider.notifier).state =
                    !ref.read(themeProvider.notifier).state;
              },
              icon: darkLigthTheme
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined)),
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $clickvalor',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

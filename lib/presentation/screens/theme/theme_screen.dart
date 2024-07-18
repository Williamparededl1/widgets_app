import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeScreen extends ConsumerWidget {
  static const name = 'theme_screen';
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool darkLigthTheme = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Screen'),
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
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: 4,
          onChanged: (value) {
            //TODO notifivar el cambio
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScrenn extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScrenn({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text(
            'Consequat nostrud aliqua enim in id consectetur dolor magna Lorem laboris. Laboris laborum nostrud laborum veniam eu. Laboris consectetur ut ea aliquip sunt est mollit occaecat elit. Commodo officia non sit id et sint ea laborum eiusmod. Labore aute voluptate laborum laboris non magna aute fugiat occaecat. In cillum laborum occaecat laboris aliquip ipsum ad dolore esse amet laboris.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Sunt enim labore velit pariatur velit ea deserunt qui nostrud nulla quis occaecat esse. Est aute excepteur elit esse velit fugiat consequat adipisicing in cillum cupidatat amet reprehenderit. Ipsum occaecat occaecat ex adipisicing laborum. Excepteur eu voluptate aliquip sit consectetur ipsum labore eiusmod enim laborum duis. Commodo laborum mollit non irure cillum culpa non cupidatat duis commodo dolor ipsum fugiat. Exercitation ea laborum tempor ipsum occaecat irure. Cupidatat nulla sint tempor incididunt velit in eiusmod.'),
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar Dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

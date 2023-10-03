import 'package:flutter/material.dart';

void showCustomSnackbar(BuildContext context) {
  final snackbar = SnackBar(
    content: const Text("Hola brother"),
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
      label: "All right",
      onPressed: () {},
    ),
  );

  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars and dialogs"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text("Mostrar Snackbar"),
      ),
    );
  }
}

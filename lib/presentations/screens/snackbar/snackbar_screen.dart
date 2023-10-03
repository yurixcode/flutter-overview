import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

void openDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Are you sure?"),
      actions: [
        TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text("Cancel")),
        FilledButton(
            onPressed: () {
              context.pop();
            },
            child: const Text("Okay")),
      ],
      content: const Text(
          "Ullamco ad nostrud eiusmod magna minim duis occaecat eiusmod do. Quis velit aliquip ad tempor mollit aute incididunt mollit. Non officia ad commodo deserunt amet sint culpa non sit ex sit dolore laboris culpa. Ex ipsum deserunt aliquip adipisicing nisi sit officia id. Quis proident aliqua eiusmod nisi dolore excepteur. Amet nisi ad ullamco proident sunt est veniam nulla amet."),
    ),
  );
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      "Voluptate ad quis cillum nostrud incididunt magna esse qui labore voluptate dolor consectetur velit nisi. Commodo duis eu cillum sit incididunt fugiat aute aliquip elit velit sunt veniam. Quis duis dolore est dolor excepteur aliquip ex aliquip aliqua ad irure. Quis dolore culpa nulla minim nisi tempor consequat eu. Reprehenderit nisi id exercitation incididunt laborum laboris Lorem consectetur Lorem aliquip. Qui Lorem Lorem labore eu enim. Excepteur esse laboris est minim Lorem est voluptate eu sit veniam ad magna do.")
                ]);
              },
              child: const Text("Licencias usadas")),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar diálogo")),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text("Mostrar Snackbar"),
      ),
    );
  }
}

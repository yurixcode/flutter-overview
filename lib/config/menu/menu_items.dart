import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Buttons",
    subtitle: "Some buttons",
    link: "/buttons",
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: "Cards",
    subtitle: "A styled card ",
    link: "/cards",
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: "Progress Indicators",
    subtitle: "Generales y controlados",
    link: "/progress",
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: "Snackbars and dialogs",
    subtitle: "Indicadores en pantalla",
    link: "/snackbars",
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: "Animated container",
    subtitle: "Stateful widget animated",
    link: "/animated",
    icon: Icons.animation,
  ),
];

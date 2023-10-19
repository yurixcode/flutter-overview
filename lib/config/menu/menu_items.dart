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
    title: "Riverpod Counter",
    subtitle: "Just a counter, a simply counter with riverpod",
    link: "/counter",
    icon: Icons.countertops_rounded,
  ),
  MenuItem(
    title: "Theme Changer",
    subtitle: "Change the application theme",
    link: "/theme-changer",
    icon: Icons.art_track,
  ),
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
  MenuItem(
    title: "UI Controls + Tiles",
    subtitle: "Just a set of flutter's controls",
    link: "/ui-controls",
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: "Application introduction",
    subtitle: "Just a A little tutorial introduction",
    link: "/tutorial",
    icon: Icons.accessible_forward,
  ),
  MenuItem(
    title: "InfiniteScroll & Pull",
    subtitle: "Just Infinite lists and pull to refresh",
    link: "/infinite",
    icon: Icons.list_alt_rounded,
  ),
];

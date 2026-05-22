import 'package:flutter/material.dart';

class MenuItems {

  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon
  });
}

const appMenuItems = <MenuItems> [
  MenuItems(
    title: 'Botones',
    subtitle: 'Varios botones en flutter',
    url: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    url: '/cards',
    icon: Icons.credit_card
  ),

  MenuItems(
    title: 'Progress Indicator',
    subtitle: 'Generales y controlados',
    url: '/progress',
    icon: Icons.refresh_rounded
    ),

    MenuItems(
    title: 'Snackbars y Dialogos',
    subtitle: 'Indicadores en pantalla',
    url: '/snackbars',
    icon: Icons.info_outline_rounded
    ),

    MenuItems(
    title: 'Animated Container',
    subtitle: 'Stateful Widgets',
    url: '/animated',
    icon: Icons.check_box_outline_blank_outlined
    ),

    MenuItems(
    title: 'Introducción a la aplicación',
    subtitle: 'Tutorial introductorio',
    url: '/tutorial',
    icon: Icons.accessible_rounded
    ),

    MenuItems(
    title: 'Cambiar tema',
    subtitle: 'Cambiar tema de la aplicación',
    url: '/theme-changer',
    icon: Icons.color_lens_outlined
    ),

    MenuItems(
    title: 'Riverpod Counter',
    subtitle: 'Introducción a Riverpod',
    url: '/counter-riverpod',
    icon: Icons.add
    ),
];
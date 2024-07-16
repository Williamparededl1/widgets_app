import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const List<MenuItems> appMenuItems = [
  MenuItems(
      title: 'Botones',
      subTitle: 'Varios botones flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/card',
      icon: Icons.credit_card),
  MenuItems(
      title: 'ProgrestIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores de Pantalla ',
      link: '/snackbars',
      icon: Icons.window_outlined),
  MenuItems(
      title: 'Animated container',
      subTitle: 'Stateful widget animado ',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItems(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles en Flutter',
      link: '/uiControl',
      icon: Icons.car_rental_outlined),
];

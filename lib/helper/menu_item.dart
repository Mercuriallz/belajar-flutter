import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final Widget page;

  MenuItem({required this.title, required this.page, required this.subtitle});
}
import 'package:flutter/material.dart';
import 'package:portia/features/home/domain/bottom_nav_items.dart';

class HomeViewManager {
  final ValueNotifier<HomeNavItems> _selectedHomeNavItem =
      ValueNotifier(HomeNavItems.dashboard);

  ValueNotifier<HomeNavItems> get selectedHomeNavItem => _selectedHomeNavItem;

  void setSelectedHomeNavItem(int value) {
    _selectedHomeNavItem.value = HomeNavItems.values[value];
  }
}

import 'package:flutter/material.dart';
import 'package:portia/features/create/presentation/create_view.dart';
import 'package:portia/features/dashboard/presentation/dashboard_view.dart';
import 'package:portia/features/home/presentation/home_view_manager.dart';
import 'package:portia/features/profile/presentation/profile_view.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final HomeViewManager _homeViewManager;

  @override
  void initState() {
    super.initState();
    _homeViewManager = HomeViewManager();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _homeViewManager.selectedHomeNavItem,
        builder: (context, selectedHomeNavItem, _) {
          return Scaffold(
            body: IndexedStack(
              index: selectedHomeNavItem.index,
              children: const [
                DashboardView(),
                CreateView(),
                ProfileView(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedHomeNavItem.index,
              onTap: (value) {
                _homeViewManager.setSelectedHomeNavItem(value);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.edit), label: "Create"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_2), label: "Profile"),
              ],
            ),
          );
        });
  }
}

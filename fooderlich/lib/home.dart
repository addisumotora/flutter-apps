import 'package:flutter/material.dart';
import 'package:fooderlich/components/color_button.dart';
import 'package:fooderlich/components/theme_button.dart';
import 'package:fooderlich/models/tab_manager.dart';
import 'package:fooderlich/screens/explore_screen.dart';
import 'package:fooderlich/screens/glocery_screen.dart';
import 'package:fooderlich/screens/recipes_screen.dart';
import 'package:provider/provider.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.changeTheme,
    required this.changeColor,
    required this.colorSelected,
    required this.appTitle,
  });

  final ColorSelection colorSelected;
  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;
  final String appTitle;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;
  List<NavigationDestination> appBarDestinations = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      label: 'Explore',
      selectedIcon: Icon(Icons.home),
    ),
    NavigationDestination(
      icon: Icon(Icons.list_outlined),
      label: 'Recipes',
      selectedIcon: Icon(Icons.list),
    ),
    NavigationDestination(
      icon: Icon(Icons.person_2_outlined),
      label: 'To Buy',
      selectedIcon: Icon(Icons.person),
    )
  ];

  @override
  Widget build(BuildContext context) {
    final pages = [
      const ExploreScreen(),
      RecipesScreen(),
      const GroceryScreen()
    ];
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.appTitle),
          elevation: 4.0,
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            ThemeButton(
              changeThemeMode: widget.changeTheme,
            ),
            ColorButton(
              changeColor: widget.changeColor,
              colorSelected: widget.colorSelected,
            ),
          ],
        ),
        body: IndexedStack(
          index: tabManager.selectedTab,
          children: pages,
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: tabManager.selectedTab,
          onDestinationSelected: (index) {
            setState(() {
              tabManager.goToTab(index);
            });
          },
          destinations: appBarDestinations,
        ),
      );
    });
  }
}

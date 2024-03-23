import 'package:flutter/material.dart';
import 'package:fooderlich/components/color_button.dart';
import 'package:fooderlich/components/theme_button.dart';
import 'package:fooderlich/models/app_state_manager.dart';
import 'package:fooderlich/models/tab_manager.dart';
import 'package:fooderlich/screens/explore_screen.dart';
import 'package:fooderlich/screens/glocery_screen.dart';
import 'package:fooderlich/screens/recipes_screen.dart';
import 'package:provider/provider.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.currentTab});
    static MaterialPage page(int currentTab) {
    return MaterialPage(
      name: 'home',
      key: const ValueKey('home'),
      child: Home(
        currentTab: currentTab,
      ),
    );
  }

  final int currentTab;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ThemeMode themeMode = ThemeMode.light;
  ColorSelection colorSelected = ColorSelection.pink;

  void changeThemeMode(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void changeColor(int value) {
    setState(() {
      colorSelected = ColorSelection.values[value];
    });
  }

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
      ThemeMode themeMode = ThemeMode.light;
      ColorSelection colorSelected = ColorSelection.pink;
       var appState = Provider.of<AppStateManager>(context, listen: false);
      return Scaffold(
        appBar: AppBar(
          title: Text("FooderLich"),
          elevation: 4.0,
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            ThemeButton(
              changeThemeMode: changeThemeMode,
            ),
            ColorButton(
              changeColor: changeColor,
              colorSelected: colorSelected,
            ),
          ],
        ),
        body: IndexedStack(
          index: appState.getSelectedTab,
          children: pages,
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: appState.getSelectedTab,
          onDestinationSelected: (index) {
            setState(() {
              appState.goToTab(index);
            });
          },
          destinations: appBarDestinations,
        ),
      );
  }

}

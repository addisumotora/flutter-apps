import 'package:flutter/material.dart';
import 'package:fooderlich/models/app_state_manager.dart';
import 'package:fooderlich/models/grocery_manager.dart';
import 'package:fooderlich/models/tab_manager.dart';
import 'package:fooderlich/navigation/app_router.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';
import 'constants.dart';
import 'home.dart';

void main() {
  runApp(const Yummy());
}

class Yummy extends StatefulWidget {
  const Yummy({super.key});

  @override
  State<Yummy> createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  ThemeMode themeMode = ThemeMode.light;
  ColorSelection colorSelected = ColorSelection.pink;
  late AppRouter _appRouter;
  final AppStateManager _appStateManager = AppStateManager();
  final GroceryManager _groceryManager = GroceryManager();

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

  @override
  void initState() {
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
      groceryManager: _groceryManager,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Fooderlich';

    return MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: ThemeData(
          colorSchemeSeed: colorSelected.color,
          useMaterial3: true,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          colorSchemeSeed: colorSelected.color,
          useMaterial3: true,
          brightness: Brightness.dark,
        ),
        home: Router(routerDelegate: _appRouter)
          // child: Home(
          //   appTitle: appTitle,
          //   changeTheme: changeThemeMode,
          //   changeColor: changeColor,
          //   colorSelected: colorSelected,
          // ),
        );
  }
}

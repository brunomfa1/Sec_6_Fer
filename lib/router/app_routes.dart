import 'package:flutter/material.dart';
import 'package:sec_6/models/models.dart';
import 'package:sec_6/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions =  <MenuOption>[
    MenuOption(route: 'home', name: 'Home Screen', screem: const HomeScreen(), icon: Icons.house),
    MenuOption(route: 'listview1', name: 'List View 1', screem: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listviwe2', name: 'List View 2', screem: const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alert Screen', screem: const AlertScreen(), icon: Icons.warning),
    MenuOption(route: 'card', name: 'Card Screen', screem: const AlertScreen(), icon: Icons.card_membership),
  ];

  static Map<String, Widget Function(BuildContext)> routes = 
  {
      'home'      : (BuildContext context) => const HomeScreen(),
      'listview1' : (BuildContext context) => const Listview1Screen(),
      'listview2' : (BuildContext context) => const Listview2Screen(),
      'alert'     : (BuildContext context) => const AlertScreen(),
      'card'      : (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute( RouteSettings setting){
    return MaterialPageRoute(
          builder: (context) => const AlertScreen(), 
        );
  }

}
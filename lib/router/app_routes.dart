import 'package:flutter/material.dart';
import 'package:sec_6/models/models.dart';
import 'package:sec_6/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions =  <MenuOption>[
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.house),
    MenuOption(route: 'listview1',  name: 'List View 1',      screen: const Listview1Screen(),  icon: Icons.list),
    MenuOption(route: 'listviwe2',  name: 'List View 2',      screen: const Listview2Screen(),  icon: Icons.list_alt),
    MenuOption(route: 'alert',      name: 'Alert Screen',     screen: const AlertScreen(),      icon: Icons.warning),
    MenuOption(route: 'card',       name: 'Card Screen',      screen: const CardScreen(),       icon: Icons.card_membership),
    MenuOption(route: 'avatar',     name: 'Avatar Screen',    screen: const AvatarScreen(),     icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animation',  name: 'Animetad Screen',  screen: const AnimatedScreen(),   icon: Icons.animation_outlined),
    MenuOption(route: 'input',      name: 'Input Screen',     screen: const InputScreen(),      icon: Icons.input_rounded),
    MenuOption(route: 'screen',     name: 'Slider && Checks', screen: const SliderScreen(),     icon: Icons.slideshow_outlined),
    MenuOption(route: 'listbuilder',name: 'ListViewBuilder',  screen: const ListViewBuilderScreen(), icon: Icons.line_style),  
    ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)>approutes = {};

    approutes.addAll({'home' : (BuildContext context) => const HomeScreen() });

    for (final option in menuOptions) {
      approutes.addAll({option.route : (BuildContext context) => option.screen });
    }

    return approutes;

  }

 // static Map<String, Widget Function(BuildContext)> routes = 
 // {
 //     'home'      : (BuildContext context) => const HomeScreen(),
 //     'listview1' : (BuildContext context) => const Listview1Screen(),
 //     'listview2' : (BuildContext context) => const Listview2Screen(),
 //     'alert'     : (BuildContext context) => const AlertScreen(),
 //     'card'      : (BuildContext context) => const CardScreen(),
 // };

  static Route<dynamic> onGenerateRoute( RouteSettings setting){
    return MaterialPageRoute(
          builder: (context) => const AlertScreen(), 
        );
  }

}
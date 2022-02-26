import 'package:flutter/material.dart';
import '../screens/basic/01_animated_container.dart';
import '../screens/misc/animated_list.dart';

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({
    required this.name,
    required this.route,
    required this.builder,
  });
}

final basicDemos = [
  Demo(
    name: 'AnimatedContainer',
    route: AnimatedContainerDemo.routeName,
    builder: (context) => const AnimatedContainerDemo(),
  ),
];

final miscDemo = [
  Demo(
    name: 'AnimatedList',
    route: AnimatedListDemo.routeName,
    builder: (context) => const AnimatedListDemo(),
  ),
];

final basicDemoRoutes =
    Map.fromEntries(basicDemos.map((e) => MapEntry(e.route, e.builder)));

final miscDemoRoutes =
    Map.fromEntries(miscDemo.map((e) => MapEntry(e.route, e.builder)));

final allRoutes = <String, WidgetBuilder>{
  ...basicDemoRoutes,
  ...miscDemoRoutes,
};

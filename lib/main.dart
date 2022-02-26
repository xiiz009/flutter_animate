// ignore_for_file: empty_constructor_bodies
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:developer' as developer;

import 'src/basic/01_animated_container.dart';
import 'src/misc/animated_list.dart';

void main() {
  runApp(const AnimationSamples());
}

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

class AnimationSamples extends StatelessWidget {
  const AnimationSamples({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: allRoutes,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animation App'),
        ),
        body: ListView(
          children: [
            ListTile(
                title: Text(
              'Basic',
              style: headerStyle,
            )),
            ...basicDemos.map((d) => DemoTitle(demo: d)),
            ListTile(
                title: Text(
              'Misc',
              style: headerStyle,
            )),
            ...miscDemo.map((d) => DemoTitle(demo: d)),
          ],
        ));
  }
}

class DemoTitle extends StatelessWidget {
  final Demo demo;
  const DemoTitle({Key? key, required this.demo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        Navigator.pushNamed(context, demo.route);
      },
    );
  }
}

import 'package:flutter/material.dart';
import '../routes/routes.dart';

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

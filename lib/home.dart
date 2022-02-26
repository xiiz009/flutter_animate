import 'package:flutter/material.dart';
import 'src/routes/routes.dart';
import 'src/widget/Demotitle.dart';

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

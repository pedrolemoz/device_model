import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/modules/initial/initial_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Device Model',
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:tappit/home.dart';

// import 'package:flutter/table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.teal,
    ));
    return MaterialApp(initialRoute: Home.id, routes: {
      Home.id: (context) => Home(),
    });
  }
}

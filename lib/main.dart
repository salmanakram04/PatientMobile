import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/auth_screen.dart';
import './providers/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Auth(),
          )
        ],
        child: MaterialApp(
            title: 'CFBPSN',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              accentColor: Colors.deepOrange,
              fontFamily: 'Lato',
            ),
            home: AuthScreen()));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CFBPSN')),
        body: Center(child: Text('Welcome to Patient Social Network')));
  }
}

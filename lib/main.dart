import 'package:flutter/material.dart';
import 'package:storeappfire/services/auth.dart';
import 'package:storeappfire/views/root.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StoreApp',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.green
      ),
      home: new RootPage(auth: new AuthService())
    );
  }
}
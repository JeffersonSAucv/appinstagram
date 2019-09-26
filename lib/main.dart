import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:insta_app/perfil_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white12,
        // systemNavigationBarColor: Colors.red,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Fake',
      home: ProfilePage(),
    );
  }
}

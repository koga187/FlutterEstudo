import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/image_asset_local/login_page.dart';
import 'package:ola_mundo/image_asset_local/app_controler.dart';
import 'package:ola_mundo/image_asset_local/home_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme ? 
              Brightness.dark : 
              Brightness.light,
          ),
          // set routes and initial route
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage()
          },
        );
      },
      animation: AppController.instance,
    );
  }
}

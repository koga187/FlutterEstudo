
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/login_page/login_page.dart';
import 'package:ola_mundo/login_page/app_controler.dart';

/*
 * The new login page.
 */

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
          home: LoginPage(),
        );
      },
      animation: AppController.instance,
    );
  }
}

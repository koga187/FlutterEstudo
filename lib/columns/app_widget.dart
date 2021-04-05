import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/columns/app_controler.dart';
import 'package:ola_mundo/columns/home_page.dart';

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
          home: HomePage(),
        );
      },
      animation: AppController.instance,
    );
  }
}

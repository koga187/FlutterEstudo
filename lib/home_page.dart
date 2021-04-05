import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/custom_scaffold.dart';
import 'package:ola_mundo/drawer/app_controler.dart';
import 'package:ola_mundo/drawer/custom_plus_float_button.dart';
import 'package:ola_mundo/drawer/custom_switch.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                  "Componente do Contador: ${AppController.instance.counter}"),
            ),
            CustomSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.asset('assets/images/profile.jpg'),
              ),
              accountName: Text('koga187'), 
              accountEmail: Text('koga187@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('tela de inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('sair do app'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.fireplace),
              title: Text('Desafio Tinder'),
              subtitle: Text('acessar tela do desafio'),
              onTap: () {
                Navigator.of(context).pushNamed('/tinder_challenger');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("App Boto"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
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
      floatingActionButton: CustomPlusFloatingButton(),
    );
  }
}

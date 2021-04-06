import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/drawer/custom_plus_float_button.dart';
import 'package:ola_mundo/drawer/custom_switch.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  CustomScaffold({this.body});

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
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.fireplace),
              title: Text('Desafio Tinder'),
              subtitle: Text('acessar tela do desafio'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/tinder_challenger');
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Conversor de moeda'),
              subtitle: Text('faz o calculo da cotação entre as moedas'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/conversor_moeda');
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
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("App Boto"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: this.body,
      floatingActionButton: CustomPlusFloatingButton(),
    );
  }
}

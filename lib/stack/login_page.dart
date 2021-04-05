import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //added a image from the network
              Container(
                alignment: Alignment.topCenter,
                width:200,
                height: 200,
                child: Image.asset(
                  'assets/images/boto_logo_sem_fundo.png',
                  fit: BoxFit.fitWidth,                  
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                onChanged: (email) {
                  this.email = email;
                  print(email);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: 'E-mail',
                    focusColor: Colors.lightBlueAccent,
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (password) {
                  this.password = password;
                  print(password);
                },
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: 'Password',
                    focusColor: Colors.lightBlueAccent,),
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                onPressed: () {
                  if (email == 'teste' && password == '123') {
                    print('correto');
                    // Bellow you can see the route navigation, this navigation does need a route. setted on app_widget.dart
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    print('Login inválido');
                  }
                },
                child: Text('Login'),
              )
            ],
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          _body(),
        ],
      ),
    );
  }
}

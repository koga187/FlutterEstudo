import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //added a image from the network
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Gallirallus_pacificus.jpg/150px-Gallirallus_pacificus.jpg'
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
                    border: OutlineInputBorder(), labelText: 'E-mail'),
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
                    border: OutlineInputBorder(), labelText: 'Password'),
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
        ),
      ),
    );
  }
}

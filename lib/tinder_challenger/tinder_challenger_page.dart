import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/custom_scaffold.dart';

class TinderChallenger extends StatefulWidget {
  @override
  _TinderChallengerState createState() => _TinderChallengerState();
}

class _TinderChallengerState extends State<TinderChallenger> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.pink,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/tinder.png',
            alignment: Alignment.center,
            height: 100,
          ),
          Container(
            height: 20,
          ),
          Container(
            child: Text(
              'Location Changer',
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.white, 
                fontSize: 20,
                decoration: TextDecoration.none
              ),
            ),
          ),
          Container(
            height: 15,
          ),
          Container(
            child: Text(
            'plugin app for Tinder',
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.white, 
                fontSize: 10,
                decoration: TextDecoration.none
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Login with Facebook'),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),

            ),
            
          ),
        ],
      ),
    ),
  );
  }
}

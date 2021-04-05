import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TinderChallenger extends StatefulWidget {
  @override
  _TinderChallengerState createState() => _TinderChallengerState();
}

class _TinderChallengerState extends State<TinderChallenger> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Image.asset('assets/images/tinder.png'),
          
      ],
    );
  }
}

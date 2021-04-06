import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/conversor_moeda/components/combo_moeda.dart';
import 'package:ola_mundo/custom_scaffold.dart';

class ConversorMoedaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 20,
          right: 20
        ),
        child: Column(
          children: [
              Image.asset(
              'assets/images/boto_logo_sem_fundo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 30,
            ),
            ComboMoeda(),
            ComboMoeda(),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              color: Colors.green,
              onPressed: () {},
              child: Text('Converter'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:ola_mundo/conversor_moeda/models/moeda_model.dart';

class ConversorMoedaController {
  List<MoedaModel> moedas;

  TextEditingController textoMoedaOrigem;
  TextEditingController textoMoedaDestino;

  MoedaModel moedaOrigem;
  MoedaModel moedaDestino;

  ConversorMoedaController() {
    moedas = MoedaModel.getCotacoes();
    moedaOrigem = moedas[0];
    moedaDestino = moedas[1];
  }

  void conversao() {
    String texto = textoMoedaDestino.text;
    double valorMoeda = double.tryParse(texto);
    double returnValue = 0;

    switch (moedaOrigem.name) {
      case 'Real':
        returnValue = valorMoeda * moedaOrigem.real;
        break;
      case 'Dolar':
        returnValue = valorMoeda * moedaOrigem.dolar;
        break;
      case 'Euro':
        returnValue = valorMoeda * moedaOrigem.euro;
        break;
      case 'Bitcoin':
        returnValue = valorMoeda * moedaOrigem.bitcoin;
        break;
    }

    textoMoedaOrigem.text = returnValue.toStringAsFixed(2);
  }
}

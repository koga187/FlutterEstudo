import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComboMoeda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 55,
              child: DropdownButton(
                iconEnabledColor: Colors.green,
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.green,
                ),
                items: [
                  DropdownMenuItem(child: Text('Real')),
                  DropdownMenuItem(child: Text('Dolar'))
                ],
                onChanged: (value) {},
              ),
            )),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

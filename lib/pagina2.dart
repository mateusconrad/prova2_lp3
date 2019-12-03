import 'package:flutter/material.dart';

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  TextEditingController valorA = TextEditingController();
  TextEditingController valorB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retornar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: valorA,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: valorB,

            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              child: SizedBox.expand(
                child: OutlineButton.icon(
                  icon: Icon(Icons.threesixty),
                  label: Text(
                    "Somar A + B",
                    style: TextStyle(
                    ),
                  ),
                  onPressed: () {
                    double soma =
                        double.parse(valorA.text) + double.parse(valorB.text);
                    Navigator.pop(context, soma);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

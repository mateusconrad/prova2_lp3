import 'package:flutter/material.dart';
import 'package:prova2_lp3/pagina2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PaginaHome(),
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}

class PaginaHome extends StatefulWidget {
  @override
  _PaginaHomeState createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  TextEditingController total = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Returning Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.text,
              controller: total,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Buscar Total",
                  ),
                  onPressed: () => buscaValor(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buscaValor(BuildContext context) async {
    double result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dados()),
    );
    setState(
      () => total.text = result.toString(),
    );
    print(result);
  }
}

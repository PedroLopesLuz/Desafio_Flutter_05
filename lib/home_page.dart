import 'package:challenge4/Pagina.dart';
import 'package:flutter/material.dart';

var input = TextEditingController();
class MyhomePages extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyhomePages> {
  var input = TextEditingController();
  int colores = 0;
  changeColor(int numero) {
    switch (numero) {
      case 1:
        return colores = 1;
      case 2:
        return colores = 2;

      default:
        return colores;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colores == 1 ? Colors.black : Colors.white,
        body: Column(
          children: [
            Center(
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: input,
                  decoration: InputDecoration(
                    hintText: 'Ubuntu',
                    labelText: "Ubuntuxx",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Validar'),
              onPressed: () {
                if (input.text == 'Ubuntu') {
                  setState(() {
                    changeColor(colores == 1
                        ? changeColor(colores = 0)
                        : changeColor(colores = 1));
                  });
                   Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()));
                 }},
            
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE9C46A),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
              ),
            ),
          ],
        ));
  }
}

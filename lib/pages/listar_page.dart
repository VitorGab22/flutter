import 'package:appmobile/pages/listar_page.dart';
import 'package:flutter/material.dart';

class Listar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset('assets/images/logo.png'),
            ),
            // Icon(Icons.home),
            SizedBox(
              width: 25,
            ),
            Text('Listar')
          ],
        ),
      ),
      // backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(10), //tamanho do botão
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 50,
                // color: Colors.white,
                child: ButtonTheme(
                  buttonColor: Colors.white,
                  height: 500,
                  minWidth: 200,
                  child: ElevatedButton(
                    onPressed: () => {},
                    // child: Column(

                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [const Text('Caso')],

                    // ),
                    child: Text(
                      "Manutenção",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 350,
                height: 50,
                child: ButtonTheme(
                  buttonColor: Colors.white,
                  height: 500,
                  minWidth: 200,
                  child: ElevatedButton(
                    onPressed: () => {},
                    // child: Column(

                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [const Text('Caso')],

                    // ),
                    child: Text(
                      "Empilhadeira quebrou",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 350,
                height: 50,
                // color: Colors.white,
                child: ButtonTheme(
                  buttonColor: Colors.white,
                  height: 500,
                  minWidth: 200,
                  child: ElevatedButton(
                    onPressed: () => {},
                    // child: Column(

                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [const Text('Caso')],

                    // ),
                    child: Text(
                      "Reparar rodas",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

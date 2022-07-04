import 'package:appmobile/pages/abrir_page.dart';
import 'package:flutter/material.dart';

class Pagina extends StatelessWidget {
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
            Text('Menu')
          ],
        ),
      ),
      // backgroundColor: Colors.green[100],
      body: Container(
        padding: EdgeInsets.all(80.0), //tamanho do botão
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.green,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AbrirOs()))
                },
                splashColor: Colors.greenAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.open_in_browser,
                        size: 70.0,
                        color: Colors.white,
                      ),
                      Text(
                        "Abrir OS",
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.green,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.greenAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.list,
                        size: 70.0,
                        color: Colors.white,
                      ),
                      Text(
                        "Listar OS`s",
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.green,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.greenAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.verified_user,
                        size: 70.0,
                        color: Colors.white,
                      ),
                      Text(
                        "Botão teste",
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.green,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.greenAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.room_preferences,
                        size: 70.0,
                        color: Colors.white,
                      ),
                      Text(
                        "Opções",
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Padding(
      //   padding: EdgeInsets.all(10),
      //   child: Center(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         // Container(
      //         //   width: 100,
      //         //   height: 100,
      //         //   child: Image.asset('assets/images/logo.png'),
      //         // ),
      //         Container(
      //           width: 150,
      //           height: 150,
      //           child: ButtonTheme(
      //             height: 500,
      //             minWidth: 200,
      //             child: ElevatedButton(
      //               onPressed: () => {
      //                 print("clicado"),
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   const Icon(Icons.open_in_browser),
      //                   const Text('Abrir OS')
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           width: 150,
      //           height: 150,
      //           child: ButtonTheme(
      //             height: 500,
      //             minWidth: 200,
      //             child: ElevatedButton(
      //               onPressed: () => {
      //                 print("clicado"),
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   const Icon(Icons.list),
      //                   const Text('Listar OS')
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

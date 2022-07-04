import 'package:appmobile/pages/home_page.dart';
import 'package:flutter/material.dart';

class AbrirOs extends StatefulWidget {
  @override
  State<AbrirOs> createState() => _AbrirOsState();
}

class _AbrirOsState extends State<AbrirOs> {
  final dropValue = ValueNotifier('');
  final dropOpcoes = [
    'Serviços em geral ',
    'Manutenção em geral',
    'Reparo em equipamentos'
  ];

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
            Text('Cadastrar Os')
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   width: 100,
              //   height: 100,
              //   child: Image.asset('assets/images/logo.png'),
              // ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "Cliente",
                      // labelText: "Cliente",
                      labelStyle: TextStyle(fontSize: 18),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 20,
                        top: 15,
                        right: 20,
                        bottom: 15,
                      )),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "Nome da chamada",
                      // labelText: "Nome da chamada",
                      labelStyle: TextStyle(fontSize: 18),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 20,
                        top: 15,
                        right: 20,
                        bottom: 15,
                      )),
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: ValueListenableBuilder(
                    valueListenable: dropValue,
                    builder: (BuildContext context, String value, _) {
                      return SizedBox(
                        width: 480,
                        child: DropdownButtonFormField<String>(
                          isExpanded: true,
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          hint: const Text('Escolha o serviço'),
                          decoration: InputDecoration(
                            label: const Text('Serviço:'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                          ),
                          value: (value.isEmpty) ? null : value,
                          onChanged: (escolha) =>
                              dropValue.value = escolha.toString(),
                          items: dropOpcoes
                              .map((op) =>
                                  DropdownMenuItem(value: op, child: Text(op)))
                              .toList(),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 15),
              Text("Comentário:"),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.white,
                ),
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Descreva os problemas",
                      labelStyle: TextStyle(fontSize: 18),
                      // labelStyle: TextStyle(color: Colors.blueGrey),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 20,
                        top: 15,
                        right: 20,
                        bottom: 15,
                      )),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 150,
                height: 50,
                child: ButtonTheme(
                  height: 500,
                  minWidth: 200,
                  child: ElevatedButton(
                    // onPressed: () => {print("clicado")},
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Pagina()))
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const Icon(Icons.list),
                        const Text('Cadastrar'),
                      ],
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

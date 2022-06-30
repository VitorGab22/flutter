import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/logo.png'),
              ),
              // TextFormField(
              //   autofocus: true,
              //   keyboardType: TextInputType.text, //tipo de texto input
              //   style: new TextStyle(color: Colors.grey, fontSize: 10),
              //   decoration: InputDecoration(
              //       labelText: "Email",
              //       labelStyle: TextStyle(color: Colors.grey)),
              // ),
              // Divider(),
              // TextFormField(
              //   autofocus: true,
              //   obscureText: true,
              //   keyboardType: TextInputType.text, //tipo de texto input
              //   style: new TextStyle(color: Colors.grey, fontSize: 10),
              //   decoration: InputDecoration(
              //       labelText: "Senha",
              //       labelStyle: TextStyle(color: Colors.grey)),
              // ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey,
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 20,
                        top: 15,
                        right: 20,
                        bottom: 15,
                      )),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey,
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 20,
                        top: 15,
                        right: 20,
                        bottom: 15,
                      )),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                // minWidth: 100.0,
                buttonColor: Colors.white,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    "Acessar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Text(
                'Esqueci a senha',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:appmobile/pages/home_page.dart';
import 'package:appmobile/pages/register.page.dart';
import 'package:flutter/material.dart';
// import 'package:appmobile/pages/home_page.dart';

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
              //
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Email",
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
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Senha",
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

              Divider(),
              ButtonTheme(
                height: 60.0,
                // minWidth: 20.0,
                buttonColor: Colors.white,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Pagina()))
                  },
                  child: Text(
                    "Acessar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 180,
                // height: 50,
                child: Row(
                  children: [
                    ButtonTheme(
                      // height: 60.0,
                      // minWidth: 20.0,
                      buttonColor: Colors.white,
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RegisterPage()))
                        },
                        child: Text(
                          "Registrar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Esqueci a senha',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

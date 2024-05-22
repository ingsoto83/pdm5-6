import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();
  bool visible = false;
  String user ='';
  String pass= '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/place.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              height: 300,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end:  Alignment.bottomCenter,
                  colors: [Colors.blueGrey.withOpacity(0.30), Colors.black54]
                )
              ),
              child: Center(child: Text("Travel Guide", style: TextStyle(fontSize: 80, color: Colors.white, fontFamily: 'Signatra'),)),
            ),
            Positioned(
              top: 220,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(62),
                      topRight: Radius.circular(62)
                  )
                ),
                child: Form(
                  key: _formkey,
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                        child: TextFormField(
                          validator: (value)=> value!.isEmpty ? 'Escribe tu correo...!' : null,
                          onSaved: (value)=> user = value??'',
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: "Usuario",
                            labelStyle: TextStyle(color: Colors.blue),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                              gapPadding: 10
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                              gapPadding: 10
                            )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'Escribe tu contraseña...!';
                            }else if(value.length < 6){
                              return 'Debe ser mínimo de 6 caracteres..!';
                            }else{
                              return null;
                            }
                          },
                          onSaved: (value)=> pass = value??'',
                          obscureText: visible ? false : true ,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: GestureDetector(
                                onTap: (){
                                  visible = !visible;
                                  setState(() {

                                  });
                                },
                                child: Icon(visible ? Icons.visibility_off : Icons.visibility)
                            ),
                            labelText: "Contraseña",
                            labelStyle: TextStyle(color: Colors.blue),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                              gapPadding: 10
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                              gapPadding: 10
                            )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                        height: 100,
                        child: ElevatedButton(
                          onPressed: (){
                            var form = _formkey.currentState;
                            if(form!.validate()){
                              form.save();
                              login();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80)
                              ),
                            padding: const EdgeInsets.all(0.0)
                          ),
                          child: Ink(
                            decoration:  BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.purple, Colors.cyan]
                              ),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              constraints: BoxConstraints(minHeight: 80),
                              child: Text(
                                "Iniciar Sesión",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

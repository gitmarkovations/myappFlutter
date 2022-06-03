import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/snippet_basico.dart';
 
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      // ),
      body: cuerpoLogin(),
    );
  }
}

Widget cuerpoLogin() {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/dc/15/eb/dc15ebc7d742091417cc4dfcede76930.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [nombre(), campoInputs(), campoContra() ],
        ),
      ));
}

Widget nombre() {
  return Text(
    "Bienvenido 💻  ",
    style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'arial'),
  );
}

Widget campoInputs() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Usuario",
        // fillColor: Colors.white,
        // filled: false,
        hintStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget campoContra() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      style: TextStyle(color: Colors.white),
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        // fillColor: Colors.white,
        // filled: false,
        hintStyle: TextStyle(color: Colors.white),
        filled: false,
      ),
    ),
  );
}


class BotonEntrar extends StatelessWidget{
   

  @override
Widget build  (BuildContext context  ) {
  return Scaffold(
   
    
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Ingresar'),
          ElevatedButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()))
                  }, child: null,)
        ],
      ),
    ),
  );
}}

// Widget botonEntrar(BuildContext context){


//   return ElevatedButton(
//     // color: Color.fromRGBO(6, 28, 45 ,1),
    
//     // textColor: Colors.white,
//     // padding:EdgeInsets.symmetric(horizontal: 50,vertical: 15),
    
//     child: Text("Entrar",style: TextStyle(fontSize: 18),),
//     onPressed:()=>{
//        print('hola'),
//        Navigator.push(context, MaterialPageRoute(builder:  (context)=>HomeScreen()))
//     },

//   );
// }
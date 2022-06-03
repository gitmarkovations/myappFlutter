import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/pagina02.dart';
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
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/dc/15/eb/dc15ebc7d742091417cc4dfcede76930.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nombre(),
            campoInputs(),
            campoContra(),
            CustomButton(
              color: Colors.red,
            )
          ],
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
    child: Center(
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
    ),
  );
}

class CustomButton extends StatelessWidget {
  //final Color ? color ; -- para que digas que es opcional
  final Color color;

  const CustomButton({required this.color});
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(6, 28, 45 ,1), // Background color
          padding: EdgeInsets.all(10),
          
        ),
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pagina02()))
        },
        child: Center(
          child: Text('Acceder'),
        ),
      ),
    );
  }
}

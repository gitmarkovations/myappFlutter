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
              image: AssetImage('images/fondoLogin.png'),
              fit: BoxFit.cover,
              ),),
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nombre(),
            campoInputs(),
            campoContra(),
            campoEmpresa(),
            CustomButton(
              color: Colors.red,
            )
          ],
        ),
      );
}

Widget nombre() {
  return Column(
    children: [
      Text(
        "Bienvenido   ",
        style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'arial'),
        textAlign: TextAlign.left,
      ),
      Text(
        "Ingresar tus datos para continuar   ",
        style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'arial'),
        textAlign: TextAlign.left,
      ),
    ],
  );
}

Widget campoEmpresa() {

  final _formKey = GlobalKey<FormState>();
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    key: _formKey,
    child: TextFormField(

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

Widget campoInputs() {

  final _formKey = GlobalKey<FormState>();
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    key: _formKey,
    child: TextFormField(

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
  final _formKeyContra = GlobalKey<FormState>();
  return Container(
    key: _formKeyContra,
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Center(
      child: TextFormField(
        validator: (value) {
          if (value == "" || value == null) {
            return "hola";
          }
          return null;
        },
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.white
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(6, 28, 45, 1), // Background color
          padding: EdgeInsets.all(10), 
        ),
        
        onPressed: ()   {
          // if( ){
 
          // }
          _mostrarAlerta(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pagina02()));
        },
        child: Center(
          child: Text('Acceder'),
        ),
      ),
    );
  }
}

// void _mostrarAlerta(BuildContext context){
//   showDialog(
//     context: context,

//      child:AlertDialog(
//     title: Text('HOLAAAAAAAAAAAAAAA'),
//   ))
// }

Future<void> _mostrarAlerta(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // para que no se cierre solo !
    builder: (BuildContext context) {
      return Center(
        child: AlertDialog(
          title: const Text('Advertencia',style:TextStyle (color:Colors.red),),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Complete los campos.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}

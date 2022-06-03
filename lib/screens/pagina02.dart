import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';

class Pagina02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(6, 28, 45 ,1),  
        title: Text("Bienvenido"),
      ),
      body: Padding(
         
        padding: const EdgeInsets.all(18.0),
        child: Column(
          
          children: [
            Text('Bienvenido',style: TextStyle(fontSize: 30,fontFamily: 'arial',fontWeight:FontWeight.bold ),),
            Text(
                'Hola que tal toy probando Hola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probando Hola que tal toy probando',style: TextStyle(fontSize: 15),textAlign:TextAlign.justify ,),
                SizedBox(height: 10,),
            Text(
                'Hola que tal toy probando Hola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probando Hola que tal toy probando',style: TextStyle(fontSize: 15),textAlign:TextAlign.justify ,),
                SizedBox(height: 10,),
             Text(
                'Hola que tal toy probando Hola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probandoHola que tal toy probando Hola que tal toy probando',style: TextStyle(fontSize: 15),textAlign:TextAlign.justify ,),
                SizedBox(height: 10,),



                ElevatedButton(onPressed: () { 
                  // color:Color.fromRGBO(6, 28, 45 ,1); 
                   Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeScreen()));
                 },
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[ Text("Home",style: TextStyle(fontSize: 20), textAlign:TextAlign.justify,)]
                  ),
                ),)
          ],
        ),
      ),
    );
  }
}

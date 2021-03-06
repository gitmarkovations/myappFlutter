import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//cuando pones _Hom.. significa que ningun archivo de afuera lo va poder utilizar
class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 1;
  //final porque no quedré que cambie más adelante
  final pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Facebook'),
        elevation: 0,
         
           
      ),
      //?cambiar la pantalla con un pageview
      body: PageView(
        controller: pageController,
        //es para que no se vaya más allá de lo que no hay
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomScreen(color: Colors.blue),
          CustomScreen(color: Colors.white),
          CustomScreen(color: Colors.green),
          OtraPantalla(),
          otrapantalla2()
        ],
      ),

      //una forma de navegar entre tabs
      //body: currentPage ==0 ?  CustomScreen(color:Colors.blue) :   CustomScreen(color:Colors.red),

      bottomNavigationBar: BottomNavigationBar(
          //currentIndex=para poder moverse
          currentIndex: currentPage,
          //cuando alguien hace click o tab
          onTap: (index) {
            currentPage = index;
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOutQuad);
            print('index: $index');
            //para cuando cambie el estado, osea el index
            setState(() {});
          },
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.blue.withOpacity(1),
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'usuario'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'lista'),
             BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: 'dads'),
             BottomNavigationBarItem(icon: Icon(Icons.youtube_searched_for), label: 'what')
          ]),
    );
  }
}

class CustomScreen extends StatelessWidget {
  //final Color ? color ; -- para que digas que es opcional
  final Color color;

  const CustomScreen({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text('HOlaaaaaaa'),
      ),
    );
  }
}

class OtraPantalla extends StatelessWidget {
  // Los campos en una subclase de Widgets siempre están marcados como "final".

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // en píxeles lógicos
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row es un diseño horizontal y lineal.
      child: Row(
        // <Widget> es el tipo de artículos en la lista.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null desactiva el botón
          ),
          // Expanded expande a su hijo para rellenar el espacio disponible.

          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class otrapantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material es una hoja de papel conceptual en la que aparece la UI.
    return Material(
      // Column es un diseño vertical y lineal.
      child: Column(
        children: <Widget>[
         
          Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}

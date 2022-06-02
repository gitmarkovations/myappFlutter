import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
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
          CustomScreen(color: Colors.red),
          CustomScreen(color: Colors.green),
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
                                        duration: Duration(milliseconds: 200), 
                                        curve: Curves.easeOutQuad
                                        );
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
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'lista')
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

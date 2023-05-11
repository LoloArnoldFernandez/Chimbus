import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutt
        primarySwatch: Colors.blue,
      ),
      home: _menu(),
    );
  }
}
class _menu extends StatefulWidget {
  @override
  __menuState createState() => __menuState();
}
class __menuState extends State<_menu>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black54
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image.png"),
              SizedBox(height: 50),
              Container(
                 //margin: EdgeInsets.only(top: 70),
                 width: 200,
                 decoration: BoxDecoration(
                   color: Colors.blueGrey,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: TextButton(
                   child: Text("Iniciar Sesión",style: TextStyle(color: Colors.white, fontSize: 20),),
                   onPressed: () => {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => loginState()),
                     ),
                   },
                 ),
               ),
                Container(
                 margin: EdgeInsets.only(top: 40),
                 width: 200,
                 decoration: BoxDecoration(
                   color: Colors.blueGrey,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: TextButton(
                   child: Text("Registrase",style: TextStyle(color: Colors.white, fontSize: 20),),
                   onPressed: null,
                 ),
               ), 
                Container(
                 margin: EdgeInsets.only(top: 40),
                 width: 200,
                 decoration: BoxDecoration(
                   color: Colors.blueGrey,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: TextButton(
                   child: Text("Invitado",style: TextStyle(color: Colors.white, fontSize: 20),),
                   onPressed: () => {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => homepage())
                     ),
                   },
                 ),
               )
            ],
          ),
        ),
      )
    );
  }
}

//class _login extends StatefulWidget {
  //@override
  //__loginState createState() => __loginState();
//}

class loginState extends StatelessWidget {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black54
        ),
        margin: EdgeInsets.only(left: 0, right: 0),
        padding: EdgeInsets.only(left:20,right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image.png"),
              TextField(
                 controller: email,
                 decoration: InputDecoration(
                   hintText: "username@correo.com",
                   hintStyle: TextStyle(color: Colors.white)
                   ),
              ),
              SizedBox(height: 50,),
              TextField(
                 controller: password,
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Password",
                   hintStyle: TextStyle(color: Colors.white)
                   ),
              ), 
              Container(
                 margin: EdgeInsets.only(top: 70),
                 width: 200,
                 decoration: BoxDecoration(
                   color: Colors.blueGrey,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: TextButton(
                   child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 20),),
                   onPressed: null,
                 ),
               )

            ],
          ),
        ),
      ),
    );
  }
}

class homepage extends StatelessWidget {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    //setState(() {
      //_selectedIndex = index;
    //});
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'yo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myApp(),
      title: 'Tithiya',
      debugShowCheckedModeBanner: false,
    );
  }
}

class myApp extends StatefulWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tithiya',style: TextStyle(
          fontSize: 25,
          
        ),),
        centerTitle: true,
        actions: [
          PopupMenuButton(itemBuilder: (context)=><PopupMenuEntry>[
            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Tithiya'),
            )),

            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ))
          ])
        ],
      ),
      drawer: Drawer(
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },child: Icon(Icons.navigation_rounded),),
    );
  }
}
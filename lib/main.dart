import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'FoodApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  void _showModalSheet(){
    showModalBottomSheet(context: context, builder: (builder){
      return ListView(
        children: <Widget>[
          ListTile(
            leading: ClipRRect(
              child: Image.network('https://www.conector.com/wp-content/uploads/18403419-1454830741242403-2752884136058597031-n-1.png'),
              borderRadius: BorderRadius.circular(30),
            ),
            title: Text("Pedir por Glovo"),
            subtitle: Text("Enviaremos tu pedido con un Glover"),
            onTap: (){
              print('On Glovo');
            },
          ),

          ListTile(
              leading: ClipRRect(
              child: Image.network('https://logodownload.org/wp-content/uploads/2019/05/uber-eats-logo-1.png'),
              borderRadius: BorderRadius.circular(30),
            ),
            title: Text("Uber Eats"),
            subtitle: Text("Será entregado a la puerta de tu casa con Uber Eats"),
          ),
          ListTile(
              leading: ClipRRect(
              child: Image.network('https://lh3.googleusercontent.com/XblDxQ9NEOogr-8fogjTjqnSrW3ufFq926-tBZ8Q-s9VqbIAtndut-X0_XxOC9WRTOoM'),
              borderRadius: BorderRadius.circular(30),
            ),
            title: Text("Hugo"),
            subtitle: Text("Envíaremos tu pedido por Hugo"),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FoodApp"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){

            },
            tooltip: 'Tu cuenta',
          )
        ],
      ),
      drawer: Drawer(),
bottomNavigationBar: FancyBottomNavigation(
  barBackgroundColor: Colors.red,
  circleColor: Colors.white,
  inactiveIconColor: Colors.white,
  activeIconColor: Colors.red,
  textColor: Colors.white,
  initialSelection: 0,
    tabs: [
        TabData(iconData: Icons.home, title: "Inicio"),
        TabData(iconData: Icons.shopping_basket, title: "Productos"),
        TabData(iconData: Icons.shopping_cart, title: "Carrito")
    ],
    onTabChangedListener: (position) {
      print("Selected index $position");
    },
),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network('https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c1a8.png', fit: BoxFit.cover),
          ListTile(
            onLongPress: _incrementCounter,
            leading: Icon(Icons.fastfood),
            title: Text('Hamburguesas'),
            subtitle: Text('Comida rápida'),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.directions_bike),
                  label: Text("Pedir"),
                  onPressed: _showModalSheet,
                ),
                FlatButton.icon(
                  icon: Icon(Icons.restaurant),
                  label: Text("Reservar"),
                  onPressed: (){

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    )
        ],
      )
    );
  }
}

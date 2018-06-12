import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '+UFRJ',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("+UFRJ"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("+UFRJ"),
                new Icon(Icons.accessibility)
              ],
            ),
            new Row(
              children: <Widget>[
                new Flexible(
                  child: new Padding(
                    padding: new EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                    child: new Material(
                      borderRadius: new BorderRadius.circular(30.0),
                      shadowColor: Colors.black,
                      elevation: 4.0,
                      child: new TextField(
                        decoration: new InputDecoration(
                          icon: new Padding(
                            padding: new EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                            child: new Icon(Icons.search),
                          ),
                          hintText: "Search",
                          border: InputBorder.none
                        ),

                      ),
                    ),
                  )
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new MeuButton(text: "Seleção",color: Colors.white70,borderRadius: 30.0 ),
                    new MeuButton(text: "Aulas",color: Colors.white70,borderRadius: 30.0 ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new MeuButton(text: "Alimentação",color: Colors.white70,borderRadius: 30.0 ),
                    new MeuButton(text: "Contribuir",color: Colors.white70,borderRadius: 30.0 ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MeuButton extends StatelessWidget{

  final text, color, borderRadius;

  MeuButton({@required this.text, this.color = Colors.lightBlueAccent, this.borderRadius = 30.0});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.all(20.0),
      child: new Material(
        borderRadius: new BorderRadius.circular(borderRadius),
        shadowColor: Colors.black,
        elevation: 6.0,
        child: MaterialButton(
          minWidth: 100.0,
          height: 42.0,
          onPressed: (){},
          color: color,
          child: Text(text),

        ),
      ),
    );
  }

}


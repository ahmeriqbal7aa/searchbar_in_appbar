import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO Variables
  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text('App Bar');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        title: customSearchBar,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (this.customIcon.icon == Icons.search) {
                  this.customIcon = Icon(Icons.cancel);
                  this.customSearchBar = TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                    style: TextStyle(
                      fontSize: 20.0,
                      // color: Colors.white,
                    ),
                  );
                } else {
                  this.customIcon = Icon(Icons.search);
                  this.customSearchBar = Text('App Bar');
                }
              });
            },
            icon: customIcon,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        // when add something like any widget at the appbar's bottom
        // bottom: PreferredSize(
        //   preferredSize: Size(50.0, 50.0),
        //   child: Container(),
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zuri_ass2/outputPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(title: '(Assignment 2) Print Input'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  final nameContro = TextEditingController();
  final phoneContro = TextEditingController();
  final locContro = TextEditingController();
  final webContro = TextEditingController();
  final abtContro = TextEditingController();

  getTextToNextPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsPage(
                  nameHolder: nameContro.text,
                  phoneHolder: phoneContro.text,
                  locHolder: locContro.text,
                  webHolder: webContro.text,
                  abtHolder: abtContro.text,
                )));
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
          child: Text(
            widget.title,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '*******************\nWELCOME\n*******************',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Enter your details so that we can know you',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.deepPurple),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _size.height * 0.05,
              ),
              Container(
                // color: Colo,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: nameContro,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.deepPurple,
                      decoration: InputDecoration(
                        hintText: 'Enter your full name here',
                        filled: true,
                        fillColor: Colors.deepPurple.withOpacity(0.2),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.03,
                    ),
                    TextFormField(
                      controller: phoneContro,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.deepPurple,
                      decoration: InputDecoration(
                        hintText: 'Enter your phone number here',
                        filled: true,
                        fillColor: Colors.deepPurple.withOpacity(0.2),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(30),
                        //   borderSide: BorderSide.none,
                        // ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.03,
                    ),
                    TextFormField(
                      controller: locContro,
                      keyboardType: TextInputType.streetAddress,
                      cursorColor: Colors.deepPurple,
                      decoration: InputDecoration(
                        hintText: 'Enter your location here',
                        filled: true,
                        fillColor: Colors.deepPurple.withOpacity(0.2),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(30),
                        //   gapPadding: 10,
                        // ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.03,
                    ),
                    TextFormField(
                      controller: webContro,
                      keyboardType: TextInputType.url,
                      cursorColor: Colors.deepPurple,
                      decoration: InputDecoration(
                        hintText: 'Enter your website link',
                        filled: true,
                        fillColor: Colors.deepPurple.withOpacity(0.2),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(30),
                        //   gapPadding: 10,
                        // ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.03,
                    ),
                    TextFormField(
                      controller: abtContro,
                      maxLines: null,
                      // expands: true,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.deepPurple,
                      decoration: InputDecoration(
                        hintText: 'Tell us about yourself',
                        filled: true,
                        fillColor: Colors.deepPurple.withOpacity(0.2),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(30),
                        //   gapPadding: 10,
                        // ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.05,
                    ),
                    Container(
                      width: _size.width * 0.6,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(30)),
                      child: MaterialButton(
                          elevation: 2,
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            getTextToNextPage(context);
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

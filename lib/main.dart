import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MC Donalds Touch Concept',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.varelaRoundTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: SafeArea(
                          child: Padding(padding: const EdgeInsets.only(left: 24.0,bottom: 16.0,top: 24.0,right: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  child: SvgPicture.asset(
                                    'assets/images/logo.svg',
                                    height: 48,
                                  ),
                                ),
                                SizedBox(height: 64,),
                                Text("Hey",style: TextStyle(
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.w900
                                ),),
                                Text("what's up?",style: TextStyle(
                                  fontSize: 36.0,
                                ),),

                              ],
                            ),
                          ),
                      ),
                    )
                  ],
                ),
              )
          ),
          Expanded(child: Container(
            color: Colors.red[50],
          ))
        ],
      ),
    );
  }

}

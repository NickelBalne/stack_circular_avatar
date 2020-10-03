import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    List<String> imageTexts = ["A","B","C"];

    String containerOneText = "";
    String containerTwoText = "";
    String containerThreeText = "";

    if (imageTexts.asMap().containsKey(0)){
      containerOneText = imageTexts[0];
    }else{
      containerOneText = "";
    }

    if (imageTexts.asMap().containsKey(1)){
      containerTwoText = imageTexts[1];
    }else{
      containerTwoText = "";
    }

    if (imageTexts.asMap().containsKey(2)){
      containerThreeText = imageTexts[2];
    }else{
      containerThreeText = "";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Image Stack"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
//        color: Colors.black,
        height: 120.0,
        width: 500.0,
        // alignment: FractionalOffset.center,
        child: new Stack(

          children: <Widget>[
            Visibility(
              visible: containerOneText == "" ? false : true,
              child: new Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(width: 10,color: Colors.green,style: BorderStyle.solid)
                ),
                child: Center(child: Text("$containerOneText")),
              ),
            ),
            new Positioned(
              left: 70.0,
              child: Visibility(
                visible: containerTwoText == "" ? false : true,
                child: new Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(width: 10.0,color: Colors.purple,style: BorderStyle.solid)
                  ),
                  child: Center(child: Text("$containerTwoText")),
                ),
              ),
            ),
            new Positioned(
              left:140.0,
              child: Visibility(
                visible: containerThreeText == "" ? false : true,
                child: new Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(width: 10,color: Colors.red,style: BorderStyle.solid)
                  ),
                  child: Center(child: Text("$containerThreeText")),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

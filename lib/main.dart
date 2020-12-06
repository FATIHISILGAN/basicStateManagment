import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int _count=0;

  void _plussCount(){
    setState(() {

      _count++;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Application"),
      ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Butona tıklanma sayısı"),
                  Text("$_count"),
                ],
              ),

            ),
       floatingActionButton:MyButton(_plussCount) ,
    );
  }
}

class MyButton extends StatefulWidget {
  Function increment;
  MyButton(this.increment);
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

       child:Icon(
           Icons.add
       ),
      focusColor: Colors.tealAccent,
      onPressed: widget.increment,
    );

  }
}




import 'package:flutter/material.dart';



class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {  

  var num1=0, num2=0, sum=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");


  void add(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
      
    });
  
  void sub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
      
    });

  void mul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
      
    });

  void div(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2) as int;
      
    });
    
  }
  
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(("My_Calculator")),
        shadowColor: Colors.purple,
      ),
      body: new Container(
        padding: const EdgeInsets.all(20),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output: $sum",
              style: new TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter any number"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter any number"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new MaterialButton(
                    child: new Text("+"),
                    color: Colors.purple[200],
                    onPressed: add
                    ),
                new MaterialButton(
                    child: new Text("-"),
                    color: Colors.purple[200],
                    onPressed: sub
                    )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new MaterialButton(
                    child: new Text("*"),
                    color: Colors.purple[200],
                    onPressed: mul
                    ),
                new MaterialButton(
                    child: new Text("/"),
                    color: Colors.purple[200],
                    onPressed: div
                    )
              ],
            ),
          ],
        ),
      ),
    );
  }
  }
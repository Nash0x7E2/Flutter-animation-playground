import 'package:flutter/material.dart';

void main() {
  runApp(ThePlayground());
}

class ThePlayground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: ThePlaygroundBody(),
    ));
  }
}

class ThePlaygroundBody extends StatefulWidget {
  ThePlaygroundBodyState createState() => new ThePlaygroundBodyState();
}

class ThePlaygroundBodyState extends State<ThePlaygroundBody> {
  Color color = Colors.purple;
  double radius = 0.0;
  String text = "Nash has no life";
  AlignmentGeometry alignment = Alignment(0.0, 0.9);
  Duration duration = Duration(milliseconds: 1500);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onDoubleTap: () => setState(() {
              color = Colors.purple;
              radius = 0.0;
              text = "Amrita\'s  Box";
              alignment = Alignment(0.0, 0.9);
            }),
        onTap: () => setState(() {
              color = Colors.pinkAccent;
              radius = 100.0;
              text = "Nash dies alone...";
              alignment = Alignment(0.0, 0.0);
            }),
        child: AnimatedAlign(
          duration: duration,
          alignment: alignment,
          child: AnimatedContainer(
            duration: duration,
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                color: color),
            child: Center(
                child: Text(text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800))),
          ),
        ),
      ),
    );
  }
}

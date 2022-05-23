import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni/view/Widgets/rate_context.dart';

class ClassContext extends StatefulWidget {
  final String subject;

  ClassContext({
    Key key,
    @required this.subject
  }) : super(key: key);
  
  @override
  ClassContextState createState() => ClassContextState();
}

class ClassContextState extends State<ClassContext> {
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MaterialButton(
          minWidth: 350,
          height: 100,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: const Color(0xFF75171E), width: 2 )
            ),
          //onPressed: onPressed
          child: Align(
            alignment: Alignment.center,
            child: Text(
              widget.subject,
              style: TextStyle(
                color: Colors.grey,
                fontSize:20,
              ),
          )
          )
          )
        /*Container(
          width: 350,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                )
              ]),
          )*/
      ]
    );
  }
}
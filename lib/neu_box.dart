import 'package:flutter/material.dart';

class Neu_Box extends StatelessWidget {
final child;

  const Neu_Box({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return Container(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(child: child),
  ),
    decoration: BoxDecoration(
    	borderRadius: BorderRadius.circular(12),
color: Colors.grey[300],
boxShadow: [

//bottom right
BoxShadow(
color: Colors.grey.shade500,
blurRadius: 15,
offset: Offset(5,5),
  ),


//top left
BoxShadow(
color: Colors.white,
blurRadius: 15,
offset: Offset(-5,-5),
  ),

],

      ),
    );   
  }
}
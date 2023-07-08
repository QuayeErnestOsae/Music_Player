import 'package:flutter/material.dart';
import 'package:web_app/neu_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  backgroundColor: Colors.grey[300],
  
body: Padding(
    padding: const EdgeInsets.symmetric(horizontal:25.0, vertical: 10),
  child:   SafeArea(
  
    child:   Column(children: [
  
    
  
    
  
    
  
      //back button and menu button
  
    
  
      Row(
  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
        children: [
  
        SizedBox(height: 60,
  
        width: 60,
  
        child: Neu_Box(child: Icon(Icons.arrow_back),),
  
        ),
  
  
  
        Text("P L A Y L I S T"),
  
        
  
  
  
          SizedBox(height: 60,
  
        width: 60,
  
        child: Neu_Box(child: Icon(Icons.arrow_back),),
  
        ),
  
    
  
      ],),
  
    
  
    
  
    const SizedBox(height: 25,),
  
    
  
    
  
      //cover art, artist name, song name
  
     
  
     Neu_Box(
  
      child: Column(
  
        children: [
  
          ClipRRect(
  
            borderRadius: BorderRadius.circular(12),
  
            child: Image.asset("assets/image/thank_you.jpeg")),
  
      
  
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("I can do all things",
               style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text("Mercy",
               style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
          Icon(Icons.favorite,color: Colors.red,),
        ],
      )
  
        ],
  
      )),
  

  const SizedBox(height: 24,),
      //start time, shuffle button, repeat button, end time
  Row(
   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
Text("2.00"),
Icon(Icons.shuffle),
Icon(Icons.repeat),
Text("3:20"),
  ],),
    
  SizedBox(height: 34,),
      //linear bar
  Neu_Box(
    child: Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 8,width: 202,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
        ),
    ),
    
    ),
  
    
  SizedBox(height: 34,),
      //previous song, pause play skip next song
  
    
  
    Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 90,
          height: 80,
          child: Neu_Box(
            child: Icon(Icons.skip_previous,size: 40,),
            ),
        ),

        SizedBox(
          width: 120,
          height: 80,
          child: Neu_Box(
            child: Icon(Icons.play_arrow,size: 40,),
            ),
        ),

        
        SizedBox(
          width: 90,
          height: 80,
          child: Neu_Box(
            child: Icon(Icons.skip_next,size: 40,),
            ),
        ),
      ],
    ),
  
    
  
    ],),
  
  ),
),
  );   
  }
}
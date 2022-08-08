import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() {
  runApp(
    XylophoneApp()
  );
}
class XylophoneApp extends StatelessWidget {
  void playSound(int waveNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$waveNumber.wav'));

  }
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Xylophone Sounds'),
        ),
        body: Container(

          child: Column(

            //mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Expanded(
               child: TextButton(

                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                 onPressed: (){
                  playSound(1);
                 }, child: Text(''),


               ),
             ),
             
             Expanded(
               child: TextButton(
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purpleAccent)),
                 onPressed: (){
                   playSound(2);
                 }, child: Text(''),


               ),
             ),
             
             Expanded(
               child: TextButton(
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                 onPressed: (){
                  playSound(3);
                 }, child: Text(''),


               ),
             ),
             
             Expanded(
               child: TextButton(
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                 onPressed: (){
                   playSound(4);
                 }, child: Text(''),


               ),
             ),
             
             Expanded(
               child: TextButton(
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.brown)),
                 onPressed: (){
                   playSound(5);
                 }, child: Text(''),


               ),
             ),
            
             Expanded(
               child: TextButton(
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink)),
                 onPressed: (){
                  playSound(6);
                 }, child: Text(''),


               ),
             ),
             
             Expanded(
               child: TextButton(
                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
                 onPressed: (){
                  playSound(7);
                 }, child: Text(''),


               ),
             ),
           ],
          ),
        ),

      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main()=>runApp(const XylophoneApp());
class XylophoneApp extends StatelessWidget {
  void playSound(int waveNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$waveNumber.wav'));

  }
  Expanded buidKey({required int waveNumber, required MaterialColor color}){
    return Expanded(
      child: TextButton(

        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: (){
          playSound(waveNumber);
        }, child: Text(''),


      ),
    );
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
          backgroundColor: Colors.indigo,
          title: Text('Xylophone Sounds'),
        ),
        body: Container(

          child: Column(

            //mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
            buidKey(color: Colors.red , waveNumber: 1),
             buidKey(color: Colors.blue , waveNumber: 2),
             buidKey(color: Colors.green , waveNumber: 3),
             buidKey(color: Colors.purple , waveNumber: 4),
             buidKey(color: Colors.yellow , waveNumber: 5),
             buidKey(color: Colors.brown , waveNumber: 6),
             buidKey(color: Colors.pink, waveNumber: 7)
           ],
          ),
        ),

      ),
    );
  }
}


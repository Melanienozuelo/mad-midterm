import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../flip_card.dart';
import '../data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool isAudioOn = true; 
  AudioPlayer audioPlayer = AudioPlayer(); 

void playAudio() async {
  await audioPlayer.play((AssetSource('audio/piliin-mo-ang-pilipinas.mp3')));
   audioPlayer.onPlayerComplete.listen((event) {
    audioPlayer.play( AssetSource('audio/piliin-mo-ang-pilipinas.mp3'));
  });
 
}
  void _toggleAudio() async {
    setState(() {
      isAudioOn = !isAudioOn;
    });

    if (isAudioOn) {
       await audioPlayer.resume();
    } else { 
      isAudioOn==false;
      await audioPlayer.pause();
    }
  }

  @override void initState() {
    playAudio();
    super.initState();
  }
  @override
  void dispose() {
    audioPlayer.stop();
    audioPlayer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fiesta Pick'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange.shade900,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: IconButton(
              onPressed: _toggleAudio,
              icon: Icon(isAudioOn ? Icons.volume_up : Icons.volume_off),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => FlipCardGame(Level.Easy))),
                     child: Text('Easy'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                        foregroundColor: Colors.deepOrange.shade900,
                        minimumSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                  ),
              Gap(8),
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => FlipCardGame(Level.Medium))),
                    child: Text('Medium'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                        foregroundColor: Colors.deepOrange.shade900,
                        minimumSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                  ),
              Gap(8),
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => FlipCardGame(Level.Hard))),
                    child: Text('Hard'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                        foregroundColor: Colors.deepOrange.shade900,
                        minimumSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


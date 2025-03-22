import 'package:flutter/material.dart';
import 'package:mad_midtermproject/screens/easy_screen.dart';
import 'package:mad_midtermproject/screens/hard_screen.dart';
import 'package:mad_midtermproject/screens/medium_screen.dart';

void main() {
  runApp(FlipCardGame());
}

class FlipCardGame extends StatelessWidget {
  const FlipCardGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Mode'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange.shade900,
          foregroundColor: Colors.white,
          actions: [
            Icon(Icons.volume_up_rounded),
            SizedBox(
              width: 8,
            ),
          ],
        ),
        body: Stack(
          children: [
            Image.asset('assets/image/background.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => EasyLevelScreen()
                          ),
                        );
                      },
                      child: Text('Easy'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16,
                        ),
                        foregroundColor: Colors.deepOrange.shade900,
                        minimumSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => MediumLevelScreen()
                          ),
                        );
                      },
                      child: Text('Medium'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16,
                        ),
                        foregroundColor: Colors.deepOrange.shade900,
                        minimumSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HardLevelScreen(),
                          ),
                        );
                      },
                      child: Text('Hard'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16,
                        ),
                        foregroundColor: Colors.deepOrange.shade900,
                        minimumSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}
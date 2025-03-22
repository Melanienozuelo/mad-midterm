import 'package:flutter/material.dart';

class MediumLevelScreen extends StatelessWidget {
  const MediumLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Mode'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange.shade900,
        foregroundColor: Colors.white,
        actions: const [
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
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,                  
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/image/buko.jpg',
                    fit: BoxFit.fill,
                    ),
                ),
                SizedBox(
                  width: 8,
                ),
                 Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/image/lechon.jpg',
                    fit: BoxFit.fill,
                    ),
                ),
                SizedBox(
                  width: 8,
                ),
                 Container(
                  color: Colors.deepOrange.shade900,
                    height: 100,
                    width: 70,
                 ),
              ],
            ),

            SizedBox(height: 10,),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/image/bibingka.jpg',
                    fit: BoxFit.fill,
                    ),                  
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                ),
                SizedBox(
                  width: 8,
                ),
                 Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/image/bibingka.jpg',
                    fit: BoxFit.fill,
                    ),
                ),
                SizedBox(
                  width: 8,
                ),
                 Container(
                  color: Colors.deepOrange.shade900,
                    height: 100,
                    width: 70,
                    child: Image.asset(
                    'assets/image/puto.jpg',
                    fit: BoxFit.fill,
                    ),
                 ),
              ],
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/image/lechon.jpg',
                    fit: BoxFit.fill,
                    ),                
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/image/puto.jpg',
                    fit: BoxFit.fill,
                    ),
                ),
                SizedBox(
                  width: 8,
                ),
                 Container(
                  color: Colors.deepOrange.shade900,
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/image/buko.jpg',
                    fit: BoxFit.fill,
                    ),
                ),
                SizedBox(
                  width: 8,
                ),
                 Container(
                  color: Colors.deepOrange.shade900,
                    height: 100,
                    width: 70,
                 ),
              ],
            ),
            ],
          ),
        ],
      ),  
    );
  }
}
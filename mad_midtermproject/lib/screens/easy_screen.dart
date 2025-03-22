import 'package:flutter/material.dart';

class EasyLevelScreen extends StatelessWidget {
  const EasyLevelScreen({super.key});

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
                  height: 150,
                  width: 90,                  
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Colors.deepOrange.shade900,
                  height: 150,
                  width: 90,
                ),
                SizedBox(
                  width: 8,
                ),
                 Container(
                  color: Colors.deepOrange.shade900,
                  height: 150,
                  width: 90,
                  child: Image.asset(
                    'assets/image/buko.jpg',
                    fit: BoxFit.fill,
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.deepOrange.shade900,
                      height: 150,
                      width: 90,
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
                        height: 150,
                        width: 90,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        color: Colors.deepOrange.shade900,
                        height: 150,
                        width: 90,
                      )
                  ],
              ),       
          ],
        ),
        ],
      ),  
    );
  }
}
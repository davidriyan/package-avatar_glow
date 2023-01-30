import 'package:flutter/material.dart';

import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('avatar glow'),
        centerTitle: true,
      ),
      body: Center(
        child: AvatarGlow(
          endRadius: 100.0,
          glowColor: Colors.green,
          child: Material(
            // Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/naruto/images/2/21/Sasuke_Part_1.png/revision/latest?cb=20170621055519&path-prefix=id'),
              radius: 60.0,
            ),
          ),
        ),
      ),
    );
  }
}

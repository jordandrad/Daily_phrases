import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _title = "Daily phrases";
  var _phrases = [
    '“We cannot solve problems with the kind of thinking we employed when we came up with them.” — Albert Einstein',
    '“Learn as if you will live forever, live like you will die tomorrow.” — Mahatma Gandhi',
    '"Success is not final; failure is not fatal: It is the courage to continue that counts." — Winston S. Churchil',
    '“When you change your thoughts, remember to also change your world.” —Norman Vincent Peale',
    '"It is better to fail in originality than to succeed in imitation." — Herman Melville',
    '"The road to success and the road to failure are almost exactly the same." — Colin R. Davis',
    '“Success usually comes to those who are too busy looking for it.” — Henry David Thoreau',
    '“I never dreamed about success. I worked for it.” —Estée Lauder',
    '“Don\'t let yesterday take up too much of today.” — Will Rogers',
    '“Goal setting is the secret to a compelling future.” — Tony Robbins',
    
  ];
  var _generatedPhrases = "";

  void _phraseGenerator() {
    var randomNumber = Random().nextInt(_phrases.length);
    _generatedPhrases = _phrases[randomNumber];
    setState(() {
      _generatedPhrases = _phrases[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: Colors.purple.shade900,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/phrases.png"),
            Text(
              _generatedPhrases,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Click below to generate a new phrase!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.purple.shade900
            ),
            
            ) ,
            ElevatedButton(
              onPressed: _phraseGenerator,
              child: Text("New phrase"),
              style: ElevatedButton.styleFrom(primary: Colors.purple.shade900),
            ),
          
          ],
        ),
      ),
      )
    );
  }
}



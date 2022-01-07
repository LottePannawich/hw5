import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GUESSNUMBNER',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          // เทียบได้กับแท็ก <div> ของ HTML
          child: Container(
            color: Colors.orange.shade50,

            //alignment: Alignment.center,
            child: Center(
              child: Column(
                //mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Image.asset(
                        'assets/images/guess_logo.png',
                        width: 150.0,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'GUESS',
                                style: TextStyle(
                                    fontSize: 60.0,
                                    color: Colors.deepOrange
                                        .withOpacity(0.2)),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'THE NUMBER',
                                style: TextStyle(
                                    fontSize: 29.0, color: Colors.deepOrange.withOpacity(0.6)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 200.0,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('GUESS')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

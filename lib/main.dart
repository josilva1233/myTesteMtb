import 'package:flutter/material.dart';
import 'package:josias_test_app/AlertDialogs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
           
            title: const Text('Meu app Flutter'),
          ),
          body: const MyLayout()),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: Colors.blueGrey)
                  ),
          color: Colors.lightBlue,
          child: const Text('Click Aqui'),
          textColor: Colors.yellow,
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

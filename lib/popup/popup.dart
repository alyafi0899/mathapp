import 'package:flutter/material.dart';

class Popupmesseges extends StatelessWidget {
  const Popupmesseges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Container(
                width: 178,
                height: 172,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/Logo MtkApp.png'),
                      alignment: Alignment.topCenter,
                      scale: 2.1,
                      fit: BoxFit.cover),
                ),
              ),
              behavior: SnackBarBehavior.floating,
            ));
          },
          child: const Text("Show messeges"),
        ),
      ),
    );
  }
}

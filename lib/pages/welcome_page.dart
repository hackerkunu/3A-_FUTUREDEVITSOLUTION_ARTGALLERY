import 'package:flutter/material.dart';
import 'mainpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Center(
                  child: Text(
                    'ART',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 173, 80, 30),
                      fontFamily:
                          'YourFontFamily', // Replace 'YourFontFamily' with the desired font family
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'GALLERY',
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 43, 236, 143),
                      fontFamily:
                          'YourFontFamily', // Replace 'YourFontFamily' with the desired font family
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  padding: const EdgeInsets.all(40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const MainPage()),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 229, 228, 225),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Center(
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 43, 236, 143),
                            fontFamily: 'YourFontFamily',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

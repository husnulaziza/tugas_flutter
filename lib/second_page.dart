import 'package:flutter/material.dart';
import 'package:tuga_flutter/api.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meditation'),
      ),
      backgroundColor: const Color(0xff08352E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 100),
              child: Column(
                children: [
                  Text(
                    'When were you born?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () {
                      // Action when 'Anxiety' button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0B483E), // Updated color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(104, 40),
                    ),
                    child: const Text('2001'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Action when 'Sadness' button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0B483E), // Updated color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(104, 40),
                    ),
                    child: const Text('2002'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Action when 'Stress' button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0B483E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(104, 40),
                    ),
                    child: const Text('2003'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Action when 'Panic Attack' button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0B483E), // Updated color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(104, 40),
                    ),
                    child: const Text('2004'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Action when 'Manage Pain' button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0B483E), // Updated color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(104, 40),
                    ),
                    child: const Text('2005'),
                  ),
                  SizedBox(height: 100),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => buildernya()),
                      );

                      // Action when 'Continue' button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFEC265),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: const Size(335, 64),
                    ),
                    child: const Text('Create Account'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

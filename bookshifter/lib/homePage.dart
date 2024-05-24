import 'package:flutter/material.dart';
import 'bookPage.dart';
import 'loginPage.dart';
import 'registerPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookshifter'),
        actions: [
          TextButton(
             onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange), 
            ),
          ),
          TextButton(
             onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
            child: Text(
              'Cadastro',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Doe seus livros e transforme vidas',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Descubra como o Bookshifter está revolucionando a educação e o meio ambiente através da doação de livros.',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookPage()),
                  );
                },
                child: Text('Doar agora'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Image.asset(
              '/img1.png',
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

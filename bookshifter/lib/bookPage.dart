import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookshifter/OpenlibraryRequest.dart';
import 'package:http/http.dart' as http;

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  TextEditingController isbnTextEditingController = TextEditingController();
  String _imageURL = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Doar um livro'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: isbnTextEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'ISBN',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var isbn = isbnTextEditingController.text;
                  _imageURL = "https://covers.openlibrary.org/b/isbn/$isbn-M.jpg";
                });
              },
              child: Text("Enviar"),
            ),
            if (_imageURL.isNotEmpty) Image.network(_imageURL),
          ],
        ),
      ),
    );
  }
}
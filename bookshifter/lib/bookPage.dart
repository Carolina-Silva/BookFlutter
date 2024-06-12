import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'homePage.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  TextEditingController isbnTextEditingController = TextEditingController();
  String _imageURL = "";
  String _selectedState = "Novo";
  String _selectedFatec = "Fatec São Paulo";

  List<String> states = ['Novo', 'Usado', 'Desgastado'];
  List<String> fatecs = ['Fatec São Paulo', 'Fatec Campinas', 'Fatec Sorocaba'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Doar um livro'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60), // Espaço inicial
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Doar Livro',
                    style:
                        TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextField(
                controller: isbnTextEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'ISBN',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.book),
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField(
                value: _selectedState,
                items: states.map((state) {
                  return DropdownMenuItem(
                    value: state,
                    child: Text(state),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedState = value.toString();
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Estado do Livro',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.check_circle),
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField(
                value: _selectedFatec,
                items: fatecs.map((fatec) {
                  return DropdownMenuItem(
                    value: fatec,
                    child: Text(fatec),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedFatec = value.toString();
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Fatec de Destino',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.school),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Agradecemos sua doação"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              if (_imageURL.isNotEmpty)
                                Image.network(_imageURL),
                              SizedBox(height: 20),
                              Text("A sua doação foi recebida com gratidão."),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  BookPage()));
                                    },
                                    child: Text("Doar outro livro"),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      textStyle: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                      );
                                    },
                                    child: Text("Voltar para home"),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      textStyle: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  setState(() {
                    var isbn = isbnTextEditingController.text;
                    _imageURL =
                        "https://covers.openlibrary.org/b/isbn/$isbn-M.jpg";
                  });
                },
                child: Text("Doar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Cor laranja para o botão
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  textStyle: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

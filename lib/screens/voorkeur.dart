import 'package:flutter/material.dart';
import 'package:flutter_straks_dongqi/screens/search.dart';

class Voorkeur extends StatefulWidget {
  const Voorkeur({super.key});

  @override
  State<Voorkeur> createState() => _VoorkeurState();
}

class _VoorkeurState extends State<Voorkeur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Search()));
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            )),
        title: Text(
          "Straks",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Onderwerpen",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                    height: 130,
                    width: 200,
                    color: Colors.amber,
                    child: Image.asset('images/weer.jpg')),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Thema",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Bronnen",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.amber,
                  child: Image.asset('images/bron.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Bron Titel",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

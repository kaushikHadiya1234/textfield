import 'package:flutter/material.dart';

class Texteditor extends StatefulWidget {
  const Texteditor({Key? key}) : super(key: key);

  @override
  State<Texteditor> createState() => _TexteditorState();
}

class _TexteditorState extends State<Texteditor> {
  List l1 = [];
  String name = "";
  TextEditingController txtName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "detaile",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
              height: 60,
              width: 400,
              child: TextField(
                controller: txtName,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  label: Text("Name"),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        name = txtName.text;
                        l1.add(name);
                      });
                    },
                    child: Icon(Icons.send),
                  ),
                ),
              ),

            ),
          ),

          SizedBox(height: 50),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(30)),
            child: SingleChildScrollView(
              child: Column(
                children: l1.map((e) => Text("$e",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

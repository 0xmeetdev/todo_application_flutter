import 'package:flutter/material.dart';
import 'package:todo_application/screens/homeScreen.dart';
import 'package:todo_application/services/firebase/dbServices.dart';
import 'package:todo_application/uilt/color.dart';
import 'package:todo_application/uilt/fonts.dart';

class AddNoteScreen extends StatefulWidget {
  AddNoteScreen({Key key}) : super(key: key);

  @override
  _AddNoteScreenState createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Add Notes",
          style: appbarTitleFont(Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.bookmark_border_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.archive_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: addNoteTitleFont(Colors.black),
              controller: _titleController,
              decoration: InputDecoration(
                hintText: "Gives your note title",
                hintStyle: addNoteTitleFont(Colors.grey),
                border: InputBorder.none,
              ),
            ),
            Expanded(
              child: TextField(
                controller: _noteController,
                style: addNoteDataFont(Colors.black),
                decoration: InputDecoration(
                  hintText: "Take your note",
                  hintStyle: addNoteDataFont(Colors.grey),
                  border: InputBorder.none,
                ),
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: yellow,
        onPressed: () async {
          print(_titleController.text + " " + _noteController.text);
          await DatabaseSearvice().addDataInDatabase(
            title: _titleController.text,
            data: _noteController.text,
          );
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (route) => false,
          );
        },
        child: Icon(
          Icons.note_add_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}

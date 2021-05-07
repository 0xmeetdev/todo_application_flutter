import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_application/screens/add_note.dart';
import 'package:todo_application/services/firebase/dbServices.dart';
import 'package:todo_application/uilt/color.dart';
import 'package:todo_application/uilt/fonts.dart';
import 'package:todo_application/uilt/routes.dart';
import 'package:todo_application/widgets/notesNotFound.dart';
import 'package:todo_application/widgets/streamNotes.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: appbarTitleFont(Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: DatabaseSearvice().streamData.snapshots(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Object>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator.adaptive());
          }
          if (snapshot.data.size == 0) {
            return noteNotFound();
          } else {
            return streamNotes(snapshot);
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 70,
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.mic_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.archive_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: yellow,
        onPressed: () {
          pushNextScreen(context, AddNoteScreen());
        },
        child: Icon(
          Icons.add_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseSearvice {
  final FirebaseFirestore _authInit = FirebaseFirestore.instance;

  CollectionReference get streamData => _authInit.collection("notes");

  addDataInDatabase({String title, String data}) async {
    return await _authInit.collection("notes").add({
      'title': title,
      'dec': data,
      'timeStamp': Timestamp.now(),
    });
  }
}

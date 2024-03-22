import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethod {
  Future<DocumentReference<Map<String, dynamic>>> addData(
      Map<String, dynamic> data) async {
    return FirebaseFirestore.instance.collection("PRODUIT").add(data);
  }

  Future<void> getData(Map<String, dynamic> data, String id) async {
    return FirebaseFirestore.instance.collection("PRODUIT").doc(id).set(data);
  }
}

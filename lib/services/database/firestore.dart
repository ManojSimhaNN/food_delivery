import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  //get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //save order to firestore
  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,

      //add more fields needed
    });
  }
}

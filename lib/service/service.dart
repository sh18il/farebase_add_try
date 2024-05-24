import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faiju_fire/model/model.dart';

class StService {
  CollectionReference fireStore =
      FirebaseFirestore.instance.collection("datas");

  Future<StModel> addData(StModel model) async {
    await fireStore.add(model.toJson());
    return model;
  }
}

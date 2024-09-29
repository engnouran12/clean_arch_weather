
import 'package:clean_arch_weather_app/core/services/database_auth_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService implements DataBaseServices{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> setData (
      {required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }


}



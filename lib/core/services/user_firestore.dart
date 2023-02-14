import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/model/user_model.dart';

class UserFireStore {
  final CollectionReference _userCollectionRef =
      FirebaseFirestore.instance.collection("users");

 Future<void> addUserToFireStore(UserModel userModel)async{

 return  await _userCollectionRef.doc(userModel.uId).set(userModel.toJson());
 }
}

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserModels extends Equatable {
  final String email;
  final String name;
  final String uid;

  const UserModels({required this.email, 
  required this.name,
   required this.uid});
    factory UserModels.fromFirestore( user) {
    return UserModels(
        email: user.email??'',
         name: user.displayName??'',
          uid: user.uid
          );
  }

  @override
 
  List<Object?> get props => 
  [
    email, name, uid
  ];
}

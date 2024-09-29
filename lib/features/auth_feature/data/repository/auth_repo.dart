import 'package:clean_arch_weather_app/core/utilites/failure/serverFailure/server_error.dart';
import 'package:clean_arch_weather_app/features/auth_feature/data/models/user_models.dart';
import 'package:either_dart/either.dart';

abstract class AuthRepo{
  Future<Either<Failure,UserModels>> createUserWithEmailAndPassword(String email, String password,String name);
  Future<Either<Failure,UserModels>> signInWithEmailAndPassword(String email, String password);

 // Future setUserData({required UserEntity userEntity});
}
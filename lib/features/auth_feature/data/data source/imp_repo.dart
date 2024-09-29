import 'package:clean_arch_weather_app/core/services/database_auth_services.dart';
import 'package:clean_arch_weather_app/core/services/firebase_auth_services.dart';
import 'package:clean_arch_weather_app/core/utilites/failure/serverFailure/server_error.dart';
import 'package:clean_arch_weather_app/features/auth_feature/data/models/user_models.dart';
import 'package:clean_arch_weather_app/features/auth_feature/data/repository/auth_repo.dart';
import 'package:either_dart/either.dart';

class AuthRepoImplementation extends AuthRepo {
  final FirebaseServices firebaseServices;
  final DataBaseServices dataBaseServices;
  AuthRepoImplementation(
      {required this.dataBaseServices, required this.firebaseServices});

  @override
  Future<Either<Failure, UserModels>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseServices.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserModels.fromFirestore(user);
      return Right(userEntity);
    } on Exception catch (e) {
      return Left(
        ServerFailure('An error occurred. Please try again.'),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          'An error occurred. Please try again.',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserModels>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseServices.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModels.fromFirestore(user));
    } on Exception catch (e) {
      return Left(
        ServerFailure('An error occurred. Please try again.'),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          'An error occurred. Please try again.',
        ),
      );
    }
  }

  
 
}
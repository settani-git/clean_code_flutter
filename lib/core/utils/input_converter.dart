import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_example/core/error/failures.dart';

class InputConverter {
  Either<Failure, int> stringToInteger(String str){
      try{
        final integer = int.parse(str);
        if(integer < 0) throw FormatException();
        return Right(integer);
      } on FormatException {
        return Left(InvalidInputFailure());
      }
  }
}
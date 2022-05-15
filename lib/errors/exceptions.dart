import 'package:super_repository/super_repository.dart';

import 'exceptions_enum.dart';

class Exceptions implements Exception {
  Exceptions();

  factory Exceptions.fromStatusCode(int statusCode, [message]) {
    switch (statusCode) {
      case 0:
        return CustomException(message: message);
      case 204:
        return NoContentException();
      case 400:
        return ConflictException(message: message);

      case 401:
        return UnauthenticatedException(message: message);
      case 404:
        return NotFoundException();
      case 406:
        return InvalidException();
      case 410:
        return ExpireException();
      case 434:
        return UserExistsException();
      case 439:
        return BlockedException();
      case 500:
        return ServerException();

      default:
        return UnexpectedException();
    }
  }

  factory Exceptions.fromEnumeration(ExceptionTypes types) {
    switch (types) {
      case ExceptionTypes.cache:
        return CacheException();
      case ExceptionTypes.process:
        return ProcessException();
      case ExceptionTypes.connection:
        return ConnectionException();
      case ExceptionTypes.timeout:
        return TimeoutException();
      case ExceptionTypes.empty:
        return EmptyException();
      case ExceptionTypes.unexpected:
        return UnexpectedException();
    }
  }
}

class ServerException extends Exceptions {
  String? message;

  ServerException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorServerException;
  }
}

class CacheException extends Exceptions {
  String? message;

  CacheException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorCacheException;
  }
}

class EmptyException extends Exceptions {
  String? message;

  EmptyException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorCacheException;
  }
}

class NoContentException extends Exceptions {
  String? message;

  NoContentException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorEmptyException;
  }
}

class InvalidException extends Exceptions {
  String? message;

  InvalidException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorInvalidException;
  }
}

class NotFoundException extends Exceptions {
  String? message;

  NotFoundException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorNotFoundException;
  }
}

class ExpireException extends Exceptions {
  String? message;

  ExpireException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorExpireException;
  }
}

class UserExistsException extends Exceptions {
  String? message;

  UserExistsException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorUserExistsException;
  }
}

class PasswordException extends Exceptions {
  String? message;

  PasswordException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorPasswordException;
  }
}

class UnexpectedException extends Exceptions {
  String? message;

  UnexpectedException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorUnexpectedException;
  }
}

class UnauthenticatedException extends Exceptions {
  String? message;

  UnauthenticatedException({this.message}) {
    message ??= SuperLocalizations.of(
            SuperRepository.navigatorKey.currentState!.context)!
        .errorUnauthenticatedException;
  }
}

class BlockedException extends Exceptions {
  String? message;

  BlockedException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorBlockedException;
  }
}

class ConnectionException extends Exceptions {
  String? message;

  ConnectionException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorConflictException;
  }
}

class ProcessException extends Exceptions {

}

class TimeoutException extends Exceptions {
  String? message;

  TimeoutException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorNotFoundException;

    message ??= '';
  }
}

class ConflictException extends Exceptions {
  final String? message;

  ConflictException({this.message});
}

class ReceiveException implements Exception {
  String? message;

  ReceiveException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorReceiveFailure;
  }
}

class UnknownException implements Exception {
  String? message;

  UnknownException({this.message}) {
    message ??= SuperLocalizations.of(
        SuperRepository.navigatorKey.currentState!.context)!
        .errorUnexpectedException;
  }
}

class CustomException implements Exceptions {
  final String message;

  CustomException({required this.message});
}

class ValidationException implements Exception {
  final String message;

  ValidationException({required this.message});
}
